package hahaCompani;

import com.formdev.flatlaf.FlatDarkLaf;
import com.formdev.flatlaf.FlatIntelliJLaf;
import com.formdev.flatlaf.FlatLightLaf;
import hahaCompani.form.vhod;

import javax.swing.*;

public class Main {
    public static void main(String[] args) throws UnsupportedLookAndFeelException {
       UIManager.setLookAndFeel(new FlatLightLaf());

       vhod vhod = new vhod();
       vhod.setVisible(true);
    }
}