package ptscale;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.sun.tools.javac.util.List;

public class usersMongo {
	
	String host = "192.168.0.29";
	int port = 27017;
	String dbName = "ptscale";
	String dbUser = "zdzichudb";
	String dbPassword = "kwiatek33";
	DBCollection ptCollection = getPtUsersCollection();
	
	public DBCollection getPtUsersCollection() {
		try {
			Mongo mongo = new Mongo(host, port);
			DB db = mongo.getDB(dbName);
			db.authenticate(dbUser, dbPassword.toCharArray());
			DBCollection add = db.getCollection("users");
			return add;
		} catch (UnknownHostException e) {
			throw new RuntimeException(e);
		} catch (MongoException e) {
			throw new RuntimeException(e);

		}
	}
	 long id = ptCollection.getCount();
	public void addUsers(String userName, String firstName, String secondName ,String jobTitle, String contactPhone, String email, String appRole ) {
		 
		
		 ptCollection.insert(new BasicDBObject().append("Id",id).append("UserName", userName).append("FirstName", firstName).append("SecondName", secondName) 
				             .append("JobTitle",jobTitle).append("ContactPhone", contactPhone).append("Email", email).append("AppRole", appRole) );
      
	
	}
	public String readUsers() {

		StringBuilder items = new StringBuilder();
		DBCursor cursor = ptCollection.find();
		try {
			while (cursor.hasNext()) {
				items.append(cursor.next().toString());

			}
		    }finally {

			cursor.close();
		    }
		return items.toString();

	}
	

}
