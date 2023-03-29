package ni.edu.uca.myuca

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class PostAdapter(val postModel:MutableList<PostModel>): RecyclerView.Adapter<PostViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PostViewHolder {
        val view= LayoutInflater.from(parent.context).inflate(R.layout.card_post, parent, false)
        return PostViewHolder(view)
    }

    override fun onBindViewHolder(holder: PostViewHolder, position: Int) {
        return holder.bindView(postModel.get(position))
    }

    override fun getItemCount(): Int {
        return postModel.size
    }
}

class PostViewHolder(itemView: View): RecyclerView.ViewHolder (itemView){
    private val tvId: TextView = itemView.findViewById(R.id.tvId)
    private val tvNombres: TextView = itemView.findViewById(R.id.tvNombres)
    private val tvApellido: TextView = itemView.findViewById(R.id.tvApellidos)
    private val tvFechaNac: TextView = itemView.findViewById(R.id.tvFechaNac)
    private val tvTitulo: TextView = itemView.findViewById(R.id.tvTitulo)
    private val tvEmail: TextView = itemView.findViewById(R.id.tvEmail)
    private val tvFacultad: TextView = itemView.findViewById(R.id.tvFacultad)

    fun bindView(postModel: PostModel){
        tvId.text = postModel.idC.toString()
        tvNombres.text = postModel.nombres
        tvApellido.text = postModel.apellidos
        tvFechaNac.text = postModel.fechaNac
        tvTitulo.text = postModel.titulo
        tvEmail.text = postModel.email
        tvFacultad.text = postModel.facultad

    }
}