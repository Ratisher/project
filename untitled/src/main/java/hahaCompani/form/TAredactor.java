package hahaCompani.form;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.swing.*;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;

import static hahaCompani.form.mainForm.TA;

public class TAredactor extends JFrame {

    private JButton сохранитьButton;
    private JTextArea textArea1;
    private JTextField textField1;
    private JComboBox comboBox1;
    private JCheckBox картойCheckBox;
    private JCheckBox монетамиCheckBox;
    private JCheckBox купюрамиCheckBox;
    private JCheckBox QRCheckBox;
    private JButton отменитьButton;
    private JPanel main;

    public OkHttpClient client = new OkHttpClient();

    public TAredactor() {

        setSize(650, 900);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setContentPane(main);

        textField1.setText(TA.getString("nazvaniye"));

        addComboBox1();
        сохранитьButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                save();
            }
        });

        купюрамиCheckBox.setSelected((TA.getString("oplataKupurami") == "0" ? true : false));
        картойCheckBox.setSelected((TA.getString("oplataKartoi") == "0" ? true : false));
    }

    public void addComboBox1() {

        Request req = new Request.Builder().url("http://localhost:8080/VenApar/getAllModel").build();

        try (Response response = client.newCall(req).execute()) {
            JSONArray jsonArray = new JSONArray(response.body().string());

            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject obj = jsonArray.getJSONObject(i);
                comboBox1.addItem(obj.getString("nazvaniye"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void save() {

        Request req = new Request.Builder().url("http://localhost:8080/VenApar/setTA?" +
                        "id=" + TA.getInt("id") +
                        "&name=" + textField1.getText() +
                        "&oplataKupurami=" + (купюрамиCheckBox.isSelected() ? 1 : 0) +
                        "&oplataKartoi=" + (картойCheckBox.isSelected() ? 1 : 0))
                .build();

        try (Response resp = client.newCall(req).execute()) {
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
