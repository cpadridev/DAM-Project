using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows;
using System.Windows.Media;
using MahApps.Metro.Controls;
using LiveCharts.Wpf;
using LiveCharts;
using tpv.Backend.Models;
using System.Globalization;

namespace tpv.Frontend.Dialogs
{
    /// <summary>
    /// Lógica de interacción para ChartDialog.xaml
    /// </summary>
    public partial class ChartDialog : MetroWindow
    {
        private List<sale> sales;

        public ChartDialog()
        {
            InitializeComponent();
            InitializeChart();
            LoadSalesData();
        }

        private void InitializeChart()
        {
            salesChart.Series = new SeriesCollection();
        }

        private void LoadSalesData()
        {
            using (var context = new tpvEntities())
            {
                sales = context.sales.ToList();
            }

            PopulateChart();
        }

        private void PopulateChart()
        {
            var allMonths = Enumerable.Range(1, 12);

            var groupedSales = sales
                .GroupBy(s => new { s.date.Year, s.date.Month })
                .OrderBy(g => g.Key.Year)
                .ThenBy(g => g.Key.Month)
                .Select(g => new
                {
                    Year = g.Key.Year,
                    Month = g.Key.Month,
                    SalesCount = g.Count()
                });

            var series = new SeriesCollection();
            var labels = new List<string>();
            var salesCounts = new ChartValues<int>();

            foreach (var month in allMonths)
            {
                var monthName = CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(month);
                labels.Add(monthName);

                var sale = groupedSales.FirstOrDefault(g => g.Month == month);
                if (sale != null)
                    salesCounts.Add(sale.SalesCount);
                else
                    salesCounts.Add(0);
            }

            var columnSeries = new ColumnSeries
            {
                Title = "Ventas",
                Values = salesCounts,
                MaxColumnWidth = 50,
                Fill = Brushes.DodgerBlue,
                Foreground = Brushes.White
            };

            series.Add(columnSeries);

            salesChart.Series = series;

            salesChart.AxisX.Clear();

            var axisX = new Axis
            {
                Labels = labels,
                LabelsRotation = 15,
                Separator = new LiveCharts.Wpf.Separator { Step = 1 },
                Foreground = Brushes.White,
                Title = "Meses",
                FontSize = 14,
                FontWeight = FontWeights.Bold
            };
            salesChart.AxisX.Add(axisX);

            salesChart.AxisY.Clear();
            var axisY = new Axis
            {
                MinValue = 0,
                LabelFormatter = value => value.ToString(),
                Foreground = Brushes.White,
                Title = "Número de Ventas",
                FontSize = 14,
                FontWeight = FontWeights.Bold
            };
            salesChart.AxisY.Add(axisY);

            salesChart.LegendLocation = LegendLocation.Top;
            salesChart.Background = Brushes.Transparent;
            salesChart.Foreground = Brushes.White;

            columnSeries.MouseEnter += (sender, e) =>
            {
                var column = (ColumnSeries)sender;
                column.Fill = Brushes.Black;
            };

            columnSeries.MouseLeave += (sender, e) =>
            {
                var column = (ColumnSeries)sender;
                column.Fill = Brushes.DodgerBlue;
            };
        }
    }
}
