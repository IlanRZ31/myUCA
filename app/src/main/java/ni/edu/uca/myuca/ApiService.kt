package ni.edu.uca.myuca

import retrofit2.Call
import retrofit2.http.GET

interface ApiService {
    @GET("mostrarNotLikeMSc.php")
    fun getPosts():Call<MutableList<PostModel>>
}