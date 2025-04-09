package hahaCompani.form;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.IOException;

public class vhod extends JFrame {
    private JPanel mainPanel;
    private JButton войтиButton;
    private JTextField textField1;
    private JPasswordField passwordField1;

    public static JSONObject joUser = null;
    private OkHttpClient ok = new OkHttpClient();

    public vhod() {

        setContentPane(mainPanel);
        setTitle("Авторизация");
        setSize(500, 300);
//        setLocationRelativeTo(null);

        login();
        войтиButton.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                login();
            }
        });
    }

    public void login() {
        String login = textField1.getText();
        String parol = passwordField1.getText();

        Request req = new Request.Builder()
                .url("http://localhost:8080/VenApar/login?" + "parol=" + 123 + "&login=" + 123)
                .get()
                .build();

        try (Response res = ok.newCall(req).execute()) {
            System.out.println(res.code());

            if (res.code() != 404) {
                joUser = new JSONObject(res.body().string());
                mainForm mainForm = new mainForm();
                mainForm.setVisible(true);


                dispose();
            } else {
                JOptionPane.showMessageDialog(null, "Неверный логин или пароль!");
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
