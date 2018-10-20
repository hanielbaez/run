package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;

import java.io.File;
import android.view.View;
import java.io.FileOutputStream;
import android.graphics.Bitmap;

import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.content.pm.PackageManager;
import android.Manifest;
import android.os.Build;

/**
 * Created by Chuy's on 02/06/2016.
 */
public class Share{
	
	final int MY_PERMISSIONS=9;
	int EVENT_OTHER_SOCIAL=70;

	
	Activity activity=RunnerActivity.CurrentActivity;
 
	 public String Android_getExternalPath()
	 {

		 return String.valueOf(Environment.getExternalStorageDirectory());

	 }
	 
	 
	 public String Android_getPath()
	 {
	 return String.valueOf(Environment.getDataDirectory());
	 }
	 
	 public void ShareAndroid_Text(String Title_text,String text){
		      	
        Intent i = new Intent();
		i.setAction(Intent.ACTION_SEND);
		i.putExtra(Intent.EXTRA_TEXT, text);
		i.setType("text/plain");
		activity.startActivity(Intent.createChooser(i, Title_text));
    }
	 
    public void ShareAndroid_Image(String Title_text,String path){
				
        Intent i = new Intent();
        i.setAction(Intent.ACTION_SEND);
        i.setType("image/*");
        i.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(new File(path)));
        activity.startActivity(Intent.createChooser(i, Title_text));

    }	
	
	
	public void Share_getPermission()
	{
			if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){

                ActivityCompat.requestPermissions(RunnerActivity.CurrentActivity,
                        new String[]{Manifest.permission.READ_EXTERNAL_STORAGE,Manifest.permission.WRITE_EXTERNAL_STORAGE},
                        MY_PERMISSIONS);}	
	}
	
	public double Share_checkPermission()
	{
		 if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.READ_EXTERNAL_STORAGE)==0)
		if(ContextCompat.checkSelfPermission(RunnerActivity.CurrentActivity,Manifest.permission.WRITE_EXTERNAL_STORAGE)==0)
		return(1);
		return(0);	
	}
	
	
}

