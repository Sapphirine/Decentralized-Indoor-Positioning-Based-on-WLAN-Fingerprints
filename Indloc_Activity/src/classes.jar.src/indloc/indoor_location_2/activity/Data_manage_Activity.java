package indloc.indoor_location_2.activity;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import indloc.indoor_location_2.sqlite.DB_helper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Data_manage_Activity
  extends Activity
{
  private static String DbName = "Inloc2_db";
  private static final String TB_NAME = "dataOfInloc2";
  private SQLiteDatabase Db;
  private String condition;
  private Cursor cursor;
  private ArrayList<Map<String, Object>> data;
  private ArrayList<Item> filedata;
  private EditText fileet;
  private String filename;
  private ListView listview;
  private String x_;
  private EditText xet;
  private String y_;
  private EditText yet;
  
  private void delete()
  {
    openDB();
    new Table().delete();
    this.Db.close();
  }
  
  private void find()
  {
    this.x_ = this.xet.getText().toString().trim();
    this.y_ = this.yet.getText().toString().trim();
    openDB();
    this.condition = ("X_ =" + this.x_ + " and Y_ =" + this.y_);
    Table localTable = new Table();
    localTable.build();
    localTable.query(this.condition);
    show();
  }
  
  private void getData(boolean paramBoolean)
  {
    this.data = new ArrayList();
    this.cursor.moveToFirst();
    if (this.cursor.isAfterLast())
    {
      this.cursor.close();
      this.Db.close();
      return;
    }
    String str1 = this.cursor.getString(0);
    String str2 = this.cursor.getString(1);
    String str3 = this.cursor.getString(2);
    String str4 = this.cursor.getString(3);
    String str5 = this.cursor.getString(4);
    Object localObject;
    if (paramBoolean)
    {
      localObject = new Item();
      ((Item)localObject).id = str1;
      ((Item)localObject).x = str2;
      ((Item)localObject).y = str3;
      ((Item)localObject).mac = str4;
      ((Item)localObject).rss = str5;
      this.filedata.add(localObject);
    }
    for (;;)
    {
      this.cursor.moveToNext();
      break;
      localObject = new HashMap();
      ((Map)localObject).put("id", str1);
      ((Map)localObject).put("X_", str2);
      ((Map)localObject).put("Y_", str3);
      ((Map)localObject).put("mac", str4);
      ((Map)localObject).put("rss", str5);
      this.data.add(localObject);
    }
  }
  
  private void openDB()
  {
    this.Db = new DB_helper(this, DbName, null, 1).getWritableDatabase();
  }
  
  private void save()
  {
    this.filename = this.fileet.getText().toString().trim();
    this.filedata = new ArrayList();
    openDB();
    Object localObject1 = new Table();
    ((Table)localObject1).build();
    ((Table)localObject1).query(this.condition);
    this.filedata.clear();
    getData(true);
    localObject1 = new Date();
    localObject1 = DateFormat.getDateTimeInstance().format((Date)localObject1);
    Object localObject2 = Environment.getExternalStorageState();
    if ("mounted".equals(localObject2)) {
      Toast.makeText(this, " readable and writable  ", 1).show();
    }
    try
    {
      Toast.makeText(this, " " + this.filedata.size(), 1).show();
      localObject2 = new FileOutputStream(Environment.getExternalStorageDirectory().getPath() + "/" + this.filename + ".txt", true);
      OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter((OutputStream)localObject2, "gb2312");
      localOutputStreamWriter.write(" create date: " + (String)localObject1 + "\n");
      localOutputStreamWriter.write("id xcoordination ycoordination mac RSS\n");
      int i = 0;
      for (;;)
      {
        if (i >= this.filedata.size())
        {
          localOutputStreamWriter.close();
          ((FileOutputStream)localObject2).close();
          Toast.makeText(this, "store successfully!", 1).show();
          return;
          if ("mounted_ro".equals(localObject2))
          {
            Toast.makeText(this, " readable and unwritable  ", 1).show();
            break;
          }
          Toast.makeText(this, " unreadable and unwritable  ", 1).show();
          break;
        }
        localObject1 = (Item)this.filedata.get(i);
        localOutputStreamWriter.write(((Item)localObject1).id + " " + ((Item)localObject1).x + " " + ((Item)localObject1).y + " " + ((Item)localObject1).mac + " " + ((Item)localObject1).rss + "\n");
        Log.i("item " + i, ((Item)localObject1).id + " " + ((Item)localObject1).x + " " + ((Item)localObject1).y + " " + ((Item)localObject1).mac + " " + ((Item)localObject1).rss);
        i += 1;
      }
      return;
    }
    catch (IOException localIOException)
    {
      Toast.makeText(this, "store failed!", 1).show();
      localIOException.printStackTrace();
    }
  }
  
  private void show()
  {
    getData(false);
    SimpleAdapter localSimpleAdapter = new SimpleAdapter(this, this.data, 2130903045, new String[] { "id", "X_", "Y_", "mac", "rss" }, new int[] { 2131230758, 2131230759, 2131230760, 2131230761, 2131230762 });
    this.listview.setAdapter(localSimpleAdapter);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    this.xet = ((EditText)findViewById(2131230749));
    this.yet = ((EditText)findViewById(2131230751));
    this.fileet = ((EditText)findViewById(2131230755));
    this.listview = ((ListView)findViewById(2131230757));
    ((Button)findViewById(2131230752)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Data_manage_Activity.this.find();
      }
    });
    ((Button)findViewById(2131230753)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Data_manage_Activity.this.delete();
      }
    });
    ((Button)findViewById(2131230754)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Data_manage_Activity.this.save();
      }
    });
    ((Button)findViewById(2131230756)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(Data_manage_Activity.this, Indloc_Activity.class);
        paramAnonymousView.setFlags(67108864);
        Data_manage_Activity.this.startActivity(paramAnonymousView);
      }
    });
  }
  
  protected void onStart()
  {
    super.onStart();
    openDB();
    this.condition = null;
    Table localTable = new Table();
    localTable.build();
    localTable.query(this.condition);
    show();
  }
  
  class Item
  {
    private String id;
    private String mac;
    private String rss;
    private String x;
    private String y;
    
    Item() {}
  }
  
  class Table
  {
    Table() {}
    
    private void build()
    {
      Data_manage_Activity.this.Db.execSQL("create table if not exists dataOfInloc2( id_ integer primary key autoincrement, X_ integer, Y_ integer, mac varchar,rss integer)");
    }
    
    private void delete()
    {
      Data_manage_Activity.this.Db.execSQL("drop table if exists dataOfInloc2");
    }
    
    private void query(String paramString)
    {
      Data_manage_Activity.this.cursor = Data_manage_Activity.this.Db.query("dataOfInloc2", null, paramString, null, null, null, "id_ ASC");
    }
  }
}


/* Location:              /Users/changliu/Downloads/big data project/indloc/indoor_location_2/activity/Data_manage_Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */