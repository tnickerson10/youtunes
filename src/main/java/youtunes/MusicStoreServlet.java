package youtunes;

import java.io.IOException;

// JAVAX IMPORTS AS THIS PROJECT USED TOMCAT 9. USE JAKARTA IMPORTS IF USING TOMCAT 10 OR NEWER
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import youtunes.model.Album;
import youtunes.model.Artist;
import youtunes.service.impl.JdbcAlbumDao;
import youtunes.service.impl.JdbcArtistDao;


@WebServlet(name = "MusicStoreServlet", urlPatterns = { "/store/*" })
public class MusicStoreServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	
	public MusicStoreServlet() {
		super();
		
	}

	// SERVLET DOGET METHOD
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	// SERVLET DOPOST METHOD
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		String base = "/jsp/"; // Set the base folder name to jsp.
		String url = base + "index.jsp"; // set the default url to /jsp/index.jsp.
		String action = request.getParameter("action"); // get the parameter action value.

		System.out.println("Action value from the doPost method: " + action);
		System.out.println("URL value from the doPost method: " + url);

		// SWITCH STATEMENT CONTROLS PAGE URL
		if (action != null) 
		{
			switch (action) 
			{
				case "showContactUs":
					url = base + "Contact.jsp";
					break;
				case "showAboutUs":
					url = base + "About.jsp";
					break;
				case "showArtists":
					url = base + "artists/List.jsp";
					break;
				case "newArtist":
					url = base + "artists/New.jsp";
					break;
				case "artistDetails":
					url = base + "artists/Details.jsp";
					break;
				case "updateArtist":
					updateArtist(request, response);
					url = base + "artists/List.jsp";
					break;
				case "deleteArtist": 
					deleteArtist(request, response);
					url = base + "artists/List.jsp";
					break;
				case "createArtist":
					createArtist(request, response);
					url = base + "artists/List.jsp";
					break;
				case "newAlbum":
					url = base + "albums/New.jsp";
					break;
				case "albumDetails":
					url = base + "albums/Details.jsp";
					break;
				case "createAlbum":
					createAlbum(request, response);
					url = base + "index.jsp";
					break;
				case "updateAlbum":
					updateAlbum(request, response);
					url = base + "index.jsp";
					break;
				case "showAlbums":
					url = base + "index.jsp";
					break;
				case "deleteAlbum":
					deleteAlbum(request, response);
					url = base + "index.jsp";
					break;
			}
		}

		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);

		requestDispatcher.forward(request, response);
	}
	
	// UPDATE ARTIST METHOD
	private void updateArtist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// GRABS ARTIST USER INPUTS
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String artistId = request.getParameter("artistId"); 
		
		Artist artistToUpdate = new Artist(); 
		
		// SETS UPDATED ARTIST INFO
		artistToUpdate.setAritstId(Long.parseLong(artistId));
		artistToUpdate.setFirstName(firstName);
		artistToUpdate.setLastName(lastName);
		
		// CREATES A jbdc instance to connect to DB AND UPDATE
		JdbcArtistDao artistDao = new JdbcArtistDao(); 
		artistDao.update(artistToUpdate);
		
		System.out.println("ArtistId: " + artistId + "; First name: " + firstName + "; Last name: " + lastName);
		System.out.println("Updated artist: " + artistId);
	}
	
	// DELETE ARTIST METHOD
	private void deleteArtist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String artistId = request.getParameter("artistId");
		
		// CREATES NEW jbdcArtistDao INSTANCE TO DELETE
		JdbcArtistDao artistDao = new JdbcArtistDao();
		artistDao.remove(Long.parseLong(artistId));
		
		System.out.println("Removed artist: " + artistId);
	}
	
	// CREATE ARTIST METHOD
	private void createArtist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// GRABS USER INPUT FOR CREATING NEW ARTIST
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		
		//  CREATES NEW jbdcArtistDao INSTANCE TO CREATE A NEW ARTIST
		JdbcArtistDao artistDao = new JdbcArtistDao(); 
		artistDao.add(new Artist(firstName, lastName));
		
		System.out.println("Added artist: {first_name='" + firstName + "';last_name='" + lastName + "'}");
	}
	
	// CREATE NEW ALBUM METHOD
	private void createAlbum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// GRABS USER INPUT FOR CREATING A NEW ALBUM
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String genre = request.getParameter("genre");
		String imgUrl = request.getParameter("img_url");
		String artistId = request.getParameter("artist");
		
		// CREATES A NEW ALBUM INSTANCE
		Album newAlbum = new Album(); 
		
		// SETS NEW ALBUM DETAILS
		newAlbum.setTitle(title);
		newAlbum.setPrice(Double.parseDouble(price));
		newAlbum.setGenre(genre);
		newAlbum.setImgUrl(imgUrl);
		newAlbum.setArtistId(Long.parseLong(artistId));
		
		// CREATES A jbdc instance to connect to DB AND UPDATE
		JdbcAlbumDao albumDao = new JdbcAlbumDao(); 
		albumDao.add(newAlbum);
		
		System.out.println(newAlbum.toString());
		
	}
	
	// UPDATE ALBUM METHOD
	private void updateAlbum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// GRABS USER INPUT FOR UPDATING AN EXISTING ALBUM
		String albumId = request.getParameter("albumId");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String imgUrl = request.getParameter("img_url");
		String genre = request.getParameter("genre");
		String artistId = request.getParameter("artist");
		
		// CREATES AN UPDATED ALBUM INSTANCE
		Album updatedAlbum = new Album();
		
		// SETS UPDATED ALBUM DETAILS
		updatedAlbum.setAlbumId(Long.parseLong(albumId));
		updatedAlbum.setTitle(title);
		updatedAlbum.setPrice(Double.parseDouble(price));
		updatedAlbum.setGenre(genre);
		updatedAlbum.setImgUrl(imgUrl);
		updatedAlbum.setArtistId(Long.parseLong(artistId));
		
		System.out.println(imgUrl);
		
		// CREATES A jbdc instance to connect to DB AND UPDATE
		JdbcAlbumDao albumDao = new JdbcAlbumDao(); 
		albumDao.update(updatedAlbum);
		
		System.out.println(updatedAlbum.toString());
	}
	
	// DELETE ALBUM METHOD
	private void deleteAlbum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// GRABS ALBUMID THAT USER WANTS TO DELETE
		String albumId = request.getParameter("albumId");
		
		// CREATES A jbdc instance to connect to DB AND UPDATE
		JdbcAlbumDao albumDao = new JdbcAlbumDao(); 
		albumDao.remove(Long.parseLong(albumId));
				
		System.out.println("Removed album: " + albumId);
	}
}
