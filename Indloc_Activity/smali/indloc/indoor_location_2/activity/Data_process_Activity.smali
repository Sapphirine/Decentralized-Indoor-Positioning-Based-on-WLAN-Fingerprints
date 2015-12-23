.class public Lindloc/indoor_location_2/activity/Data_process_Activity;
.super Landroid/app/Activity;
.source "Data_process_Activity.java"


# static fields
.field private static APTB_NAME:Ljava/lang/String; = null

.field private static DbName:Ljava/lang/String; = null

.field private static LOCATB_NAME:Ljava/lang/String; = null

.field private static M:Ljava/lang/String; = null

.field private static final TB_NAME:Ljava/lang/String; = "dataOfInloc2"

.field private static VIEW_NAME:Ljava/lang/String;


# instance fields
.field private Db:Landroid/database/sqlite/SQLiteDatabase;

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

.field private listview:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "Inloc2_db"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_process_Activity;->DbName:Ljava/lang/String;

    .line 29
    const-string v0, "chosen_ap"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_process_Activity;->APTB_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "all_location"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_process_Activity;->LOCATB_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "ap_view"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_process_Activity;->VIEW_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "Data_process_Activity"

    sput-object v0, Lindloc/indoor_location_2/activity/Data_process_Activity;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lindloc/indoor_location_2/activity/Data_process_Activity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->begin_process()V

    return-void
.end method

.method private begin_process()V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->db_build()V

    .line 77
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->table_prepare()V

    .line 78
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->choose_ap()V

    .line 79
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->showAP()V

    .line 82
    new-instance v0, Lindloc/indoor_location_2/arithmetic/FingerPrint;

    invoke-direct {v0}, Lindloc/indoor_location_2/arithmetic/FingerPrint;-><init>()V

    .line 83
    .local v0, "fp":Lindloc/indoor_location_2/arithmetic/FingerPrint;
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lindloc/indoor_location_2/arithmetic/FingerPrint;->start(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    const-string v1, "\u4f4d\u7f6e\u6307\u7eb9\u5236\u4f5c\u6210\u529f\uff01"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    return-void
.end method

.method private choose_ap()V
    .locals 17

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v1, "APall":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "APtempt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v13, Lindloc/indoor_location_2/activity/Data_process_Activity;->LOCATB_NAME:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lindloc/indoor_location_2/activity/Data_process_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, "cursor1":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-gt v13, v14, :cond_0

    .line 157
    const-string v13, "AP\u9009\u62e9\u5931\u8d25\uff01"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->finish()V

    .line 161
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 175
    return-void

    .line 126
    :cond_2
    const/4 v13, 0x1

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "x":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "y":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "X_ ="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and Y_ ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "condition":Ljava/lang/String;
    sget-object v13, Lindloc/indoor_location_2/activity/Data_process_Activity;->VIEW_NAME:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v14}, Lindloc/indoor_location_2/activity/Data_process_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 130
    .local v7, "cursor2":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 132
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_7

    .line 133
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 149
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 134
    :cond_4
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 139
    :cond_5
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 140
    const/4 v13, 0x2

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 138
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 146
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 161
    .end local v5    # "condition":Ljava/lang/String;
    .end local v7    # "cursor2":Landroid/database/Cursor;
    .end local v8    # "s":Ljava/lang/String;
    .end local v11    # "x":Ljava/lang/String;
    .end local v12    # "y":Ljava/lang/String;
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 162
    .local v9, "str":Ljava/lang/String;
    const-string v14, "0"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 163
    const-string v14, "\u6211\u662f\u5206\u5272\u7ebf"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 165
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v10, "values":Landroid/content/ContentValues;
    const-string v14, "apmac"

    invoke-virtual {v10, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v14, "ap"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v15, Lindloc/indoor_location_2/activity/Data_process_Activity;->APTB_NAME:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 169
    .local v3, "check":J
    const-wide/16 v14, -0x1

    cmp-long v14, v3, v14

    if-nez v14, :cond_9

    .line 170
    sget-object v14, Lindloc/indoor_location_2/activity/Data_process_Activity;->M:Ljava/lang/String;

    const-string v15, "\u6570\u636e\u63d2\u5165\u5931\u8d25\uff01"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 172
    :cond_9
    sget-object v14, Lindloc/indoor_location_2/activity/Data_process_Activity;->M:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u6570\u636e\u63d2\u5165\u6210\u529f\u54e6\uff01"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private db_build()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lindloc/indoor_location_2/sqlite/DB_helper;

    sget-object v1, Lindloc/indoor_location_2/activity/Data_process_Activity;->DbName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lindloc/indoor_location_2/sqlite/DB_helper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    .local v0, "dbHelper":Lindloc/indoor_location_2/sqlite/DB_helper;
    invoke-virtual {v0}, Lindloc/indoor_location_2/sqlite/DB_helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    return-void
.end method

.method private get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 71
    .local v8, "cur":Landroid/database/Cursor;
    return-object v8
.end method

.method private getdata()V
    .locals 6

    .prologue
    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->data:Ljava/util/ArrayList;

    .line 189
    sget-object v3, Lindloc/indoor_location_2/activity/Data_process_Activity;->APTB_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id_ ASC"

    invoke-direct {p0, v3, v4, v5}, Lindloc/indoor_location_2/activity/Data_process_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    .line 190
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    :goto_0
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 203
    return-void

    .line 193
    :cond_0
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "apmac":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v2, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v3, "apmac"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v2, 0x0

    .line 200
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private showAP()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 179
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->getdata()V

    .line 180
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->data:Ljava/util/ArrayList;

    const v3, 0x7f030001

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "id"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "apmac"

    aput-object v5, v4, v1

    .line 181
    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 180
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 182
    .local v0, "listAdapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void

    .line 181
    :array_0
    .array-data 4
        0x7f080006
        0x7f080007
    .end array-data
.end method

.method private table_prepare()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop table if exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/activity/Data_process_Activity;->LOCATB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create table if not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/activity/Data_process_Activity;->LOCATB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string v2, "id_ integer primary key autoincrement,X_ integer,Y_ integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/activity/Data_process_Activity;->LOCATB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(X_,Y_) select distinct X_,Y_ from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dataOfInloc2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create view if not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/activity/Data_process_Activity;->VIEW_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string v2, " as select X_,Y_,mac from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dataOfInloc2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group by X_,Y_,mac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drop table if exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/activity/Data_process_Activity;->APTB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create table if not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lindloc/indoor_location_2/activity/Data_process_Activity;->APTB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    const-string v2, "( id_ integer primary key autoincrement,apmac varchar)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_process_Activity;->setContentView(I)V

    .line 42
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_process_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Data_process_Activity;->listview:Landroid/widget/ListView;

    .line 45
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_process_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    .local v1, "bt1":Landroid/widget/Button;
    new-instance v2, Lindloc/indoor_location_2/activity/Data_process_Activity$1;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Data_process_Activity$1;-><init>(Lindloc/indoor_location_2/activity/Data_process_Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Data_process_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "back":Landroid/widget/Button;
    new-instance v2, Lindloc/indoor_location_2/activity/Data_process_Activity$2;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Data_process_Activity$2;-><init>(Lindloc/indoor_location_2/activity/Data_process_Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method
