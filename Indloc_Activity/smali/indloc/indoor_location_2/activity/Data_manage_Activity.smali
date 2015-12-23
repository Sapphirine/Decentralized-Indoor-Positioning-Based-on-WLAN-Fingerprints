.class public Lindloc/indoor_location_2/activity/Data_manage_Activity;
.super Landroid/app/Activity;
.source "Data_manage_Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;,
        Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;
    }
.end annotation


# static fields
.field private static DbName:Ljava/lang/String; = null

.field private static final TB_NAME:Ljava/lang/String; = "dataOfInloc2"


# instance fields
.field private Db:Landroid/database/sqlite/SQLiteDatabase;

.field private condition:Ljava/lang/String;

.field private cursor:Landroid/database/Cursor;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private filedata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private fileet:Landroid/widget/EditText;

.field private filename:Ljava/lang/String;

.field private listview:Landroid/widget/ListView;

.field private x_:Ljava/lang/String;

.field private xet:Landroid/widget/EditText;

.field private y_:Ljava/lang/String;

.field private yet:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Inloc2_db"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->DbName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic access$2(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->find()V

    return-void
.end method

.method static synthetic access$3(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->delete()V

    return-void
.end method

.method static synthetic access$4(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->save()V

    return-void
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->openDB()V

    .line 121
    new-instance v0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;

    invoke-direct {v0, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    .line 122
    .local v0, "t":Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;
    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->delete()V
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$2(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;)V

    .line 123
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    return-void
.end method

.method private find()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->xet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->x_:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->yet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->y_:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->openDB()V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X_ ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->x_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and Y_ ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->y_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->condition:Ljava/lang/String;

    .line 112
    new-instance v0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;

    invoke-direct {v0, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    .line 113
    .local v0, "t":Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;
    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->build()V
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;)V

    .line 114
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->condition:Ljava/lang/String;

    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->query(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->show()V

    .line 116
    return-void
.end method

.method private getData(Z)V
    .locals 9
    .param p1, "save_show"    # Z

    .prologue
    .line 199
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->data:Ljava/util/ArrayList;

    .line 200
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    :goto_0
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 229
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 230
    return-void

    .line 202
    :cond_0
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "id":Ljava/lang/String;
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "x":Ljava/lang/String;
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "y":Ljava/lang/String;
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "mac1":Ljava/lang/String;
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "rss1":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 208
    new-instance v2, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    .line 209
    .local v2, "items":Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;
    invoke-static {v2, v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$5(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;Ljava/lang/String;)V

    .line 210
    invoke-static {v2, v5}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$6(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;Ljava/lang/String;)V

    .line 211
    invoke-static {v2, v6}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$7(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;Ljava/lang/String;)V

    .line 212
    invoke-static {v2, v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$8(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;Ljava/lang/String;)V

    .line 213
    invoke-static {v2, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$9(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;Ljava/lang/String;)V

    .line 214
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v2, 0x0

    .line 226
    .end local v2    # "items":Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;
    :goto_1
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 217
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "id"

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v7, "X_"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v7, "Y_"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v7, "mac"

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v7, "rss"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v7, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private openDB()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lindloc/indoor_location_2/sqlite/DB_helper;

    sget-object v1, Lindloc/indoor_location_2/activity/Data_manage_Activity;->DbName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lindloc/indoor_location_2/sqlite/DB_helper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 182
    .local v0, "dbHelper":Lindloc/indoor_location_2/sqlite/DB_helper;
    invoke-virtual {v0}, Lindloc/indoor_location_2/sqlite/DB_helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    .line 183
    return-void
.end method

.method private save()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 128
    iget-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->fileet:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filename:Ljava/lang/String;

    .line 129
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filedata:Ljava/util/ArrayList;

    .line 130
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->openDB()V

    .line 131
    new-instance v8, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;

    invoke-direct {v8, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    .line 132
    .local v8, "t":Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;
    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->build()V
    invoke-static {v8}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;)V

    .line 133
    iget-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->condition:Ljava/lang/String;

    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->query(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;Ljava/lang/String;)V

    .line 134
    iget-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 135
    invoke-direct {p0, v13}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->getData(Z)V

    .line 136
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 137
    .local v4, "now":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 138
    .local v0, "day":Ljava/text/DateFormat;
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "str":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "state":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 142
    const-string v10, " \u53ef\u8bfb\u53ef\u5199  "

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 150
    :goto_0
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 151
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 151
    invoke-direct {v5, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 153
    .local v5, "outStream":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "gb2312"

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 154
    .local v9, "writer":Ljava/io/OutputStreamWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " \u521b\u5efa\u65f6\u95f4\u662f\uff1a "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 155
    const-string v10, "id x\u5750\u6807 y\u5750\u6807 mac\u5730\u5740 \u4fe1\u53f7\u5f3a\u5ea6\n"

    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_2

    .line 170
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 171
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 172
    const-string v10, "\u6210\u529f\u4fdd\u5b58"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2    # "i":I
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v9    # "writer":Ljava/io/OutputStreamWriter;
    :goto_2
    return-void

    .line 143
    :cond_0
    const-string v10, "mounted_ro"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 144
    const-string v10, " \u53ef\u8bfb\u4e0d\u53ef\u5199  "

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 146
    :cond_1
    const-string v10, " \u4e0d\u53ef\u8bfb\u4e0d\u53ef\u5199  "

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 157
    .restart local v2    # "i":I
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v9    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;

    .line 159
    .local v3, "item":Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;
    new-instance v10, Ljava/lang/StringBuilder;

    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->id:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->x:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 161
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->y:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$2(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 162
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->mac:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$3(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 163
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->rss:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$4(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 159
    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "item "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->id:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 165
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->x:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 166
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->y:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$2(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 167
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->mac:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$3(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 168
    # getter for: Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->rss:Ljava/lang/String;
    invoke-static {v3}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;->access$4(Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 164
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 173
    .end local v2    # "i":I
    .end local v3    # "item":Lindloc/indoor_location_2/activity/Data_manage_Activity$Item;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v9    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/io/IOException;
    const-string v10, "\u4fdd\u5b58\u5931\u8d25\uff01"

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private show()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0, v5}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->getData(Z)V

    .line 188
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->data:Ljava/util/ArrayList;

    const v3, 0x7f030005

    .line 189
    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "X_"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "Y_"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "mac"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "rss"

    aput-object v5, v4, v1

    .line 190
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 188
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 191
    .local v0, "listAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    return-void

    .line 190
    nop

    :array_0
    .array-data 4
        0x7f080026
        0x7f080027
        0x7f080028
        0x7f080029
        0x7f08002a
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->setContentView(I)V

    .line 47
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->xet:Landroid/widget/EditText;

    .line 48
    const v4, 0x7f08001f

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->yet:Landroid/widget/EditText;

    .line 51
    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->fileet:Landroid/widget/EditText;

    .line 54
    const v4, 0x7f080025

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->listview:Landroid/widget/ListView;

    .line 57
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 58
    .local v3, "searchbtn":Landroid/widget/Button;
    new-instance v4, Lindloc/indoor_location_2/activity/Data_manage_Activity$1;

    invoke-direct {v4, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$1;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 66
    .local v1, "deletebtn":Landroid/widget/Button;
    new-instance v4, Lindloc/indoor_location_2/activity/Data_manage_Activity$2;

    invoke-direct {v4, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$2;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v4, 0x7f080022

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 74
    .local v2, "savebtn":Landroid/widget/Button;
    new-instance v4, Lindloc/indoor_location_2/activity/Data_manage_Activity$3;

    invoke-direct {v4, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$3;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 82
    .local v0, "back":Landroid/widget/Button;
    new-instance v4, Lindloc/indoor_location_2/activity/Data_manage_Activity$4;

    invoke-direct {v4, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$4;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->openDB()V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->condition:Ljava/lang/String;

    .line 99
    new-instance v0, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;

    invoke-direct {v0, p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;-><init>(Lindloc/indoor_location_2/activity/Data_manage_Activity;)V

    .line 100
    .local v0, "t":Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;
    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->build()V
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$0(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;)V

    .line 101
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_manage_Activity;->condition:Ljava/lang/String;

    # invokes: Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->query(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;->access$1(Lindloc/indoor_location_2/activity/Data_manage_Activity$Table;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_manage_Activity;->show()V

    .line 103
    return-void
.end method
