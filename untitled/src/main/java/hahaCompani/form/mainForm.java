package hahaCompani.form;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.*;
import org.jfree.data.Range;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.general.DefaultValueDataset;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.swing.*;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;

import static hahaCompani.form.vhod.joUser;

public class mainForm extends JFrame {
    private JPanel mainPanel;
    private JButton главнаяButton;
    private JButton мониторТАButton;
    private JButton button3;
    private JButton button4;
    private JLabel nav;
    private JButton детальныеОтчётыButton;
    private JButton ar1;
    private JButton ar2;
    private JButton ar3;
    private JButton учёт;
    private JButton администрирование;
    private JPanel tilesPanel;
    private JPanel sp;
    private JPanel dropdownAdmin;
    private JPanel headPanel;
    private JButton торговыеАвтоматыButton;
    private JButton компанииButton;
    private JButton пользователиButton;
    private JButton модемыButton;
    private JButton дополнительныеButton;
    private JButton тутПокаПустоButton;
    private JPanel dropdownUchet;
    private JPanel dropdownOtchet;
    private JPanel diagramPanel;
    private JPanel svodcaPanel;
    private JPanel spidometrPanel;
    private JPanel bcp;
    private JPanel barChartPanel;
    private JButton количествоButton;
    private JButton стоимостьButton;
    private JLabel HeaderNazv;
    private JLabel HeaderNazv2;
    private JPanel taPanel;
    private JButton плButton;
    private JButton тблButton;
    private JComboBox comboBox1;
    private JTextField фильтрTextField;
    private JButton добавитьButton;
    private JButton экпортButton;
    private JTable table1;
    private JPanel taInfo;
    private JButton a1Button;
    private JButton редактироватьButton;
    private JButton удалитьButton;
    private JButton применитьButton;


    public DefaultCategoryDataset data;
    public OkHttpClient ok = new OkHttpClient();

    public mainForm() {
        setContentPane(mainPanel);
        setSize(1920, 1080);
        setTitle("Личный Кабинет");
        setLocationRelativeTo(null);

        createUserButton();
        button3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                visibleSideBar();
            }
        });

        MouseAdapter listener = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                visibleDDAdmin();
            }
        };
        администрирование.addMouseListener(listener);
        ar3.addMouseListener(listener);

        MouseAdapter listener1 = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                vivisbleDDUtchet();
            }
        };
        учёт.addMouseListener(listener1);
        ar2.addMouseListener(listener1);

        MouseAdapter listener2 = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                visibleDDOtchet();
            }
        };
        детальныеОтчётыButton.addMouseListener(listener2);
        ar1.addMouseListener(listener2);

        createSpidometr();
        createDiagram();
        createBarChart();
        createTAPanel();
        количествоButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                data.addValue(1, "Товары", "1 мая");
                data.addValue(1, "Товары", "2 мая");
                data.addValue(9, "Товары", "3 мая");
                data.addValue(1, "Товары", "4 мая");
                data.addValue(2, "Товары", "5 мая");
                data.addValue(1, "Товары", "6 мая");
                data.addValue(1, "Товары", "7 мая");
                data.addValue(1, "Товары", "8 мая");
                data.addValue(11, "Товары", "9 мая");
                data.addValue(2, "Товары", "10 мая");
            }
        });
        стоимостьButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                data.addValue(120, "Товары", "1 мая");
                data.addValue(150, "Товары", "2 мая");
                data.addValue(95, "Товары", "3 мая");
                data.addValue(180, "Товары", "4 мая");
                data.addValue(210, "Товары", "5 мая");
                data.addValue(130, "Товары", "6 мая");
                data.addValue(170, "Товары", "7 мая");
                data.addValue(190, "Товары", "8 мая");
                data.addValue(110, "Товары", "9 мая");
                data.addValue(200, "Товары", "10 мая");
            }
        });
        главнаяButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                tilesPanel.setVisible(!tilesPanel.isVisible());
            }
        });
        торговыеАвтоматыButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                taPanel.setVisible(!taPanel.isVisible());
            }
        });
    }


//ТА отображение
    public void createTAPanel() {

        String[] columns = {"ID", "Название автомата", "Модель", "Компания", "Модем", "Адрес / Место", "В работе с"};
        DefaultTableModel model = new DefaultTableModel(columns, 0);

        table1.setModel(model);

        Request req = new Request.Builder().url("http://localhost:8080/VenApar/getAllTA").get().build();

        try (Response response = ok.newCall(req).execute()) {

            JSONArray ja = new JSONArray(response.body().string());

            for (int i = 0; i < ja.length(); i++) {
                JSONObject jo = ja.getJSONObject(i);
                Object[] rowData = {jo.getInt("id"), jo.getString("nazvaniye"), jo.getJSONObject("idModel").getString("nazvaniye"),
                        jo.getJSONObject("idCompanya").getString("nazvaniye"),
                        jo.getJSONObject("idModem").getInt("id"),
                        jo.getString("addres"), jo.getString("dataUstanovki")};
                model.addRow(rowData);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        // Где-то после инициализации таблицы
        table1.setDefaultRenderer(Object.class, new DefaultTableCellRenderer() {
            @Override
            public Component getTableCellRendererComponent(JTable table, Object value,
                                                           boolean isSelected, boolean hasFocus, int row, int column) {
                Component c = super.getTableCellRendererComponent(table, value, isSelected, hasFocus, row, column);

                if (!isSelected) {
                    c.setBackground(row % 2 != 0 ? new Color(230, 230, 250) : Color.WHITE);
                }

                return c;
            }
        });
    }

    public void createUserButton() {

        button4.setText("<html>" + joUser.getString("familiya") + " " + joUser.getString("imya").charAt(0) + "." + joUser.getString("otchestvo").charAt(0) + "." + "<p style='color: rgba(0, 0, 0, 0.5)'>" + joUser.getString("roleName") + "</p>" + "</html>");

        JPopupMenu popupMenu = new JPopupMenu();
        JMenuItem item1 = new JMenuItem("Мой профиль");
        JMenuItem item2 = new JMenuItem("Мои сессии");
        JMenuItem item3 = new JMenuItem("Выход");

        popupMenu.add(item1);
        popupMenu.add(item2);
        popupMenu.add(item3);

        button4.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Показываем выпадающее меню под кнопкой
                popupMenu.show(button4, 0, button4.getHeight());
            }
        });

    }

    public void visibleSideBar() {
        if (nav.isVisible()) {
            nav.setVisible(false);
            мониторТАButton.setText("\uD83D\uDD0D");
            главнаяButton.setText("\uD83D\uDCBB");
            детальныеОтчётыButton.setText("\uD83D\uDCC4");
            учёт.setText("\uD83D\uDED2");
            администрирование.setText("⚙");
            ar1.setVisible(false);
            ar2.setVisible(false);
            ar3.setVisible(false);
        } else {
            nav.setVisible(true);
            мониторТАButton.setText("\uD83D\uDD0D Главная");
            главнаяButton.setText("\uD83D\uDCBB Монитор ТА");
            детальныеОтчётыButton.setText("\uD83D\uDCC4 Детальные отчёты");
            учёт.setText("\uD83D\uDED2 Учёт ТМЦ");
            администрирование.setText("⚙ Администрирование");
            ar1.setVisible(true);
            ar2.setVisible(true);
            ar3.setVisible(true);
        }
    }

    public void createSpidometr() {
        // 1. Создаем набор данных (Dataset)
        DefaultValueDataset dataset = new DefaultValueDataset(75.0); // Начальное значение

        // 2. Создаем plot (MeterPlot)
        MeterPlot plot = new MeterPlot(dataset);
        plot.setRange(new Range(0, 100)); // Минимальное и максимальное значения
        plot.setDialShape(DialShape.PIE); // Форма циферблата (ROUND, CHORD, etc.)
        plot.setUnits("% Работоспособности"); // Единицы измерения
        plot.setNeedlePaint(Color.BLACK); // Цвет стрелки
        plot.setValuePaint(Color.BLACK); // Цвет отображаемого значения

        // 3. Добавляем интервалы (MeterInterval)
        plot.addInterval(new MeterInterval("Low", new Range(0, 30), Color.RED, new BasicStroke(2), Color.RED));
        plot.addInterval(new MeterInterval("Medium", new Range(30, 70), Color.YELLOW, new BasicStroke(2), Color.YELLOW));
        plot.addInterval(new MeterInterval("High", new Range(70, 100), Color.GREEN, new BasicStroke(2), Color.GREEN));

        // 4. Создаем Chart (JFreeChart)
        JFreeChart chart = new JFreeChart(null, JFreeChart.DEFAULT_TITLE_FONT, plot, false);

        // 5. Создаем ChartPanel (Swing компонент для отображения графика)
        ChartPanel chartPanel = new ChartPanel(chart);
        chartPanel.setPreferredSize(new java.awt.Dimension(10, 10));

        spidometrPanel.setLayout(new BorderLayout());
        spidometrPanel.add(chartPanel, BorderLayout.CENTER);
        spidometrPanel.revalidate();
        spidometrPanel.repaint();

        // Таймер для обновления данных каждые 2 секунды
        Timer timer = new Timer(5000, e -> {
            // Генерируем случайное значение от 0 до 100
            int newValue = (int) (Math.random() * 100);
            dataset.setValue(newValue);
        });
        timer.start();
    }

    public void createDiagram() {
        // Создаем датасет для круговой диаграммы
        DefaultPieDataset dataset = new DefaultPieDataset();

        // Добавляем три показателя
        dataset.setValue("Не работает", 45); // 45%
        dataset.setValue("На обслуживании", 30); // 30%
        dataset.setValue("Работает", 25); // 25%

        // Создаем круговую диаграмму
        JFreeChart chart = ChartFactory.createPieChart(
                " ",  // Заголовок
                dataset,                     // Данные
                false,                        // Легенда
                false,                        // Подсказки
                false                        // URL
        );

        // Получаем PiePlot правильным способом
        PiePlot plot = (PiePlot) chart.getPlot();

        // Устанавливаем цвета для каждой секции
        plot.setSectionPaint("Категория A", new Color(255, 100, 100)); // Красный
        plot.setSectionPaint("Категория B", new Color(100, 100, 255)); // Синий
        plot.setSectionPaint("Категория C", new Color(100, 255, 100)); // Зеленый

        // 5. Создаем ChartPanel (Swing компонент для отображения графика)
        ChartPanel chartPanel = new ChartPanel(chart);
        chartPanel.setPreferredSize(new java.awt.Dimension(10, 10));

        diagramPanel.setLayout(new BorderLayout());
        diagramPanel.add(chartPanel, BorderLayout.CENTER);
        diagramPanel.revalidate();
        diagramPanel.repaint();
    }

    public void createBarChart() {
        // 1. Создаем данные
        data = new DefaultCategoryDataset();

        // Добавляем продажи по дням (день, продукт, значение)
        data.addValue(120, "Товары", "1 мая");
        data.addValue(150, "Товары", "2 мая");
        data.addValue(95, "Товары", "3 мая");
        data.addValue(180, "Товары", "4 мая");
        data.addValue(210, "Товары", "5 мая");
        data.addValue(130, "Товары", "6 мая");
        data.addValue(170, "Товары", "7 мая");
        data.addValue(190, "Товары", "8 мая");
        data.addValue(110, "Товары", "9 мая");
        data.addValue(200, "Товары", "10 мая");

        // 2. Создаем диаграмму
        JFreeChart chart = ChartFactory.createBarChart(
                "Продажи за 10 дней", // Заголовок
                "Дата",               // Ось X
                "Продажи (шт.)",      // Ось Y
                data                  // Данные
        );

        ChartPanel chartPanel = new ChartPanel(chart);
        chartPanel.setPreferredSize(new java.awt.Dimension(1000, 650));

        barChartPanel.setLayout(new BorderLayout());
        barChartPanel.add(chartPanel, BorderLayout.CENTER);
        barChartPanel.revalidate();
        barChartPanel.repaint();
    }

    public void vivisbleDDUtchet() {
        if (dropdownUchet.isVisible()) {
            dropdownUchet.setVisible(false);
        } else {
            dropdownUchet.setVisible(true);
        }
    }

    public void visibleDDAdmin() {
        if (dropdownAdmin.isVisible()) {
            dropdownAdmin.setVisible(false);
        } else {
            dropdownAdmin.setVisible(true);
        }
    }

    public void visibleDDOtchet() {
        if (dropdownOtchet.isVisible()) {
            dropdownOtchet.setVisible(false);
        } else {
            dropdownOtchet.setVisible(true);
        }
    }

}


