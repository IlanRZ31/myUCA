package ni.edu.uca.myuca

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import java.net.HttpURLConnection
import java.net.URL
import java.net.URLEncoder
import ni.edu.uca.myuca.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)


        val nombresEditText = binding.etNombres
        val apellidosEditText = binding.etApellidos
        val carreraEditText = binding.etCarrera
        val anioEditText = binding.etAnio


        val enviarButton = binding.button

        // Set a click listener on the "Enviar" button
        enviarButton.setOnClickListener {
            val nombres = nombresEditText.text.toString()
            val apellidos = apellidosEditText.text.toString()
            val carrera = carreraEditText.text.toString()
            val anio = anioEditText.text.toString().toInt()


        }
    }




    }




