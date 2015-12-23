.class public Lcom/example/niuzong/MD;
.super Landroid/app/Activity;
.source "MD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/niuzong/MD$Item;,
        Lcom/example/niuzong/MD$Table;
    }
.end annotation


# static fields
.field private static DbName:Ljava/lang/String; = null

.field private static final TB_NAME:Ljava/lang/String; = "dataOfNiu"


# instance fields
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
            "Lcom/example/niuzong/MD$Item;",
            ">;"
        }
    .end annotation
.end field

.field private fileet:Landroid/widget/EditText;

.field private filename:Ljava/lang/String;

.field private listview:Landroid/widget/ListView;

.field private niuDb:Landroid/database/sqlite/SQLiteDatabase;

.field private x_:Ljava/lang/String;

.field private xet:Landroid/widget/EditText;

.field private y_:Ljava/lang/String;

.field private yet:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "niu_db"

    sput-object v0, Lcom/example/niuzong/MD;->DbName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/niuzong/MD;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/niuzong/MD;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic access$2(Lcom/example/niuzong/MD;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/example/niuzong/MD;->find()V

    return-void
.end method

.method static synthetic access$3(Lcom/example/niuzong/MD;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/example/niuzong/MD;->delete()V

    return-void
.end method

.method static synthetic access$4(Lcom/example/niuzong/MD;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/example/niuzong/MD;->save()V

    return-void
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/example/niuzong/MD;->openDB()V

    .line 118
    new-instance v0, Lcom/example/niuzong/MD$Table;

    invoke-direct {v0, p0}, Lcom/example/niuzong/MD$Table;-><init>(Lcom/example/niuzong/MD;)V

    .line 119
    .local v0, "t":Lcom/example/niuzong/MD$Table;
    # invokes: Lcom/example/niuzong/MD$Table;->delete()V
    invoke-static {v0}, Lcom/example/niuzong/MD$Table;->access$2(Lcom/example/niuzong/MD$Table;)V

    .line 120
    iget-object v1, p0, Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    return-void
.end method

.method private find()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/example/niuzong/MD;->xet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/niuzong/MD;->x_:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/example/niuzong/MD;->yet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/niuzong/MD;->y_:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/example/niuzong/MD;->openDB()V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X_ ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/example/niuzong/MD;->x_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and Y_ ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/niuzong/MD;->y_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/example/niuzong/MD;->condition:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/example/niuzong/MD$Table;

    invoke-direct {v0, p0}, Lcom/example/niuzong/MD$Table;-><init>(Lcom/example/niuzong/MD;)V

    .line 110
    .local v0, "t":Lcom/example/niuzong/MD$Table;
    # invokes: Lcom/example/niuzong/MD$Table;->build()V
    invoke-static {v0}, Lcom/example/niuzong/MD$Table;->access$0(Lcom/example/niuzong/MD$Table;)V

    .line 111
    iget-object v1, p0, Lcom/example/niuzong/MD;->condition:Ljava/lang/String;

    # invokes: Lcom/example/niuzong/MD$Table;->query(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/example/niuzong/MD$Table;->access$1(Lcom/example/niuzong/MD$Table;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/example/niuzong/MD;->show()V

    .line 113
    return-void
.end method

.method private getData(Z)V
    .locals 9
    .param p1, "save_show"    # Z

    .prologue
    .line 196
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/example/niuzong/MD;->data:Ljava/util/ArrayList;

    .line 197
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    :goto_0
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 225
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    iget-object v7, p0, Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 227
    return-void

    .line 199
    :cond_0
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "x":Ljava/lang/String;
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "y":Ljava/lang/String;
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "mac1":Ljava/lang/String;
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "rss1":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 205
    new-instance v2, Lcom/example/niuzong/MD$Item;

    invoke-direct {v2, p0}, Lcom/example/niuzong/MD$Item;-><init>(Lcom/example/niuzong/MD;)V

    .line 206
    .local v2, "items":Lcom/example/niuzong/MD$Item;
    invoke-static {v2, v0}, Lcom/example/niuzong/MD$Item;->access$5(Lcom/example/niuzong/MD$Item;Ljava/lang/String;)V

    .line 207
    invoke-static {v2, v5}, Lcom/example/niuzong/MD$Item;->access$6(Lcom/example/niuzong/MD$Item;Ljava/lang/String;)V

    .line 208
    invoke-static {v2, v6}, Lcom/example/niuzong/MD$Item;->access$7(Lcom/example/niuzong/MD$Item;Ljava/lang/String;)V

    .line 209
    invoke-static {v2, v3}, Lcom/example/niuzong/MD$Item;->access$8(Lcom/example/niuzong/MD$Item;Ljava/lang/String;)V

    .line 210
    invoke-static {v2, v4}, Lcom/example/niuzong/MD$Item;->access$9(Lcom/example/niuzong/MD$Item;Ljava/lang/String;)V

    .line 211
    iget-object v7, p0, Lcom/example/niuzong/MD;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v2, 0x0

    .line 223
    .end local v2    # "items":Lcom/example/niuzong/MD$Item;
    :goto_1
    iget-object v7, p0, Lcom/example/niuzong/MD;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 214
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "id"

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v7, "X_"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v7, "Y_"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v7, "mac"

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v7, "rss"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v7, p0, Lcom/example/niuzong/MD;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private openDB()V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Lcom/example/niuzong/NiudbHelper;

    sget-object v1, Lcom/example/niuzong/MD;->DbName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/example/niuzong/NiudbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 179
    .local v0, "dbHelper":Lcom/example/niuzong/NiudbHelper;
    invoke-virtual {v0}, Lcom/example/niuzong/NiudbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/example/niuzong/MD;->niuDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 180
    return-void
.end method

.method private save()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 125
    iget-object v10, p0, Lcom/example/niuzong/MD;->fileet:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/example/niuzong/MD;->filename:Ljava/lang/String;

    .line 126
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/example/niuzong/MD;->filedata:Ljava/util/ArrayList;

    .line 127
    invoke-direct {p0}, Lcom/example/niuzong/MD;->openDB()V

    .line 128
    new-instance v8, Lcom/example/niuzong/MD$Table;

    invoke-direct {v8, p0}, Lcom/example/niuzong/MD$Table;-><init>(Lcom/example/niuzong/MD;)V

    .line 129
    .local v8, "t":Lcom/example/niuzong/MD$Table;
    # invokes: Lcom/example/niuzong/MD$Table;->build()V
    invoke-static {v8}, Lcom/example/niuzong/MD$Table;->access$0(Lcom/example/niuzong/MD$Table;)V

    .line 130
    iget-object v10, p0, Lcom/example/niuzong/MD;->condition:Ljava/lang/String;

    # invokes: Lcom/example/niuzong/MD$Table;->query(Ljava/lang/String;)V
    invoke-static {v8, v10}, Lcom/example/niuzong/MD$Table;->access$1(Lcom/example/niuzong/MD$Table;Ljava/lang/String;)V

    .line 131
    iget-object v10, p0, Lcom/example/niuzong/MD;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 132
    invoke-direct {p0, v13}, Lcom/example/niuzong/MD;->getData(Z)V

    .line 133
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 134
    .local v4, "now":Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 135
    .local v0, "day":Ljava/text/DateFormat;
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "str":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "state":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 139
    const-string v10, " \u53ef\u8bfb\u53ef\u5199  "

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/example/niuzong/MD;->filedata:Ljava/util/ArrayList;

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

    .line 148
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/example/niuzong/MD;->filename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 148
    invoke-direct {v5, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 150
    .local v5, "outStream":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v10, "gb2312"

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 151
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

    .line 152
    const-string v10, "id x\u5750\u6807 y\u5750\u6807 mac\u5730\u5740 \u4fe1\u53f7\u5f3a\u5ea6\n"

    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lcom/example/niuzong/MD;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_2

    .line 167
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 168
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 169
    const-string v10, "\u6210\u529f\u4fdd\u5b58"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2    # "i":I
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v9    # "writer":Ljava/io/OutputStreamWriter;
    :goto_2
    return-void

    .line 140
    :cond_0
    const-string v10, "mounted_ro"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 141
    const-string v10, " \u53ef\u8bfb\u4e0d\u53ef\u5199  "

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 143
    :cond_1
    const-string v10, " \u4e0d\u53ef\u8bfb\u4e0d\u53ef\u5199  "

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 154
    .restart local v2    # "i":I
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v9    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/example/niuzong/MD;->filedata:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/niuzong/MD$Item;

    .line 156
    .local v3, "item":Lcom/example/niuzong/MD$Item;
    new-instance v10, Ljava/lang/StringBuilder;

    # getter for: Lcom/example/niuzong/MD$Item;->id:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$0(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 157
    # getter for: Lcom/example/niuzong/MD$Item;->x:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$1(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 158
    # getter for: Lcom/example/niuzong/MD$Item;->y:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$2(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 159
    # getter for: Lcom/example/niuzong/MD$Item;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$3(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 160
    # getter for: Lcom/example/niuzong/MD$Item;->rss:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$4(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 156
    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "item "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    # getter for: Lcom/example/niuzong/MD$Item;->id:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$0(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 162
    # getter for: Lcom/example/niuzong/MD$Item;->x:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$1(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 163
    # getter for: Lcom/example/niuzong/MD$Item;->y:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$2(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 164
    # getter for: Lcom/example/niuzong/MD$Item;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$3(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 165
    # getter for: Lcom/example/niuzong/MD$Item;->rss:Ljava/lang/String;
    invoke-static {v3}, Lcom/example/niuzong/MD$Item;->access$4(Lcom/example/niuzong/MD$Item;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 161
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 170
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/example/niuzong/MD$Item;
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .end local v9    # "writer":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "ex":Ljava/io/IOException;
    const-string v10, "\u4fdd\u5b58\u5931\u8d25\uff01"

    invoke-static {p0, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private show()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 184
    invoke-direct {p0, v5}, Lcom/example/niuzong/MD;->getData(Z)V

    .line 185
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/example/niuzong/MD;->data:Ljava/util/ArrayList;

    const v3, 0x7f030003

    .line 186
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

    .line 187
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 185
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 188
    .local v0, "listAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/example/niuzong/MD;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    return-void

    .line 187
    nop

    :array_0
    .array-data 4
        0x7f080010
        0x7f080011
        0x7f080012
        0x7f080013
        0x7f080014
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->setContentView(I)V

    .line 44
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/example/niuzong/MD;->xet:Landroid/widget/EditText;

    .line 45
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/example/niuzong/MD;->yet:Landroid/widget/EditText;

    .line 48
    const v4, 0x7f08000d

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/example/niuzong/MD;->fileet:Landroid/widget/EditText;

    .line 51
    const v4, 0x7f08000f

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/example/niuzong/MD;->listview:Landroid/widget/ListView;

    .line 54
    const v4, 0x7f08000a

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 55
    .local v3, "searchbtn":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/MD$1;

    invoke-direct {v4, p0}, Lcom/example/niuzong/MD$1;-><init>(Lcom/example/niuzong/MD;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 63
    .local v1, "deletebtn":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/MD$2;

    invoke-direct {v4, p0}, Lcom/example/niuzong/MD$2;-><init>(Lcom/example/niuzong/MD;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v4, 0x7f08000c

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 71
    .local v2, "savebtn":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/MD$3;

    invoke-direct {v4, p0}, Lcom/example/niuzong/MD$3;-><init>(Lcom/example/niuzong/MD;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v4, 0x7f08000e

    invoke-virtual {p0, v4}, Lcom/example/niuzong/MD;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, "back":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/MD$4;

    invoke-direct {v4, p0}, Lcom/example/niuzong/MD$4;-><init>(Lcom/example/niuzong/MD;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 94
    invoke-direct {p0}, Lcom/example/niuzong/MD;->openDB()V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/example/niuzong/MD;->condition:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/example/niuzong/MD$Table;

    invoke-direct {v0, p0}, Lcom/example/niuzong/MD$Table;-><init>(Lcom/example/niuzong/MD;)V

    .line 97
    .local v0, "t":Lcom/example/niuzong/MD$Table;
    # invokes: Lcom/example/niuzong/MD$Table;->build()V
    invoke-static {v0}, Lcom/example/niuzong/MD$Table;->access$0(Lcom/example/niuzong/MD$Table;)V

    .line 98
    iget-object v1, p0, Lcom/example/niuzong/MD;->condition:Ljava/lang/String;

    # invokes: Lcom/example/niuzong/MD$Table;->query(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/example/niuzong/MD$Table;->access$1(Lcom/example/niuzong/MD$Table;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/example/niuzong/MD;->show()V

    .line 100
    return-void
.end method
