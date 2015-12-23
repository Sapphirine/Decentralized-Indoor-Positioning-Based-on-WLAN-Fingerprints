.class public Lindloc/indoor_location_2/activity/Location_Activity;
.super Landroid/app/Activity;
.source "Location_Activity.java"


# static fields
.field private static APTB_NAME:Ljava/lang/String;

.field private static CAPTIME:I

.field private static D_TABLE:Ljava/lang/String;

.field private static DbName:Ljava/lang/String;

.field private static FPTB_NAME:Ljava/lang/String;

.field private static K_VALUE:I

.field private static LOCATB_NAME:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static T_TABLE:Ljava/lang/String;

.field private static VIEW:Ljava/lang/String;


# instance fields
.field private Db:Landroid/database/sqlite/SQLiteDatabase;

.field private X_:D

.field private Y_:D

.field private listResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private t2:Landroid/widget/TextView;

.field private t3:Landroid/widget/TextView;

.field private t4:Landroid/widget/TextView;

.field private t5:Landroid/widget/TextView;

.field private t6:Landroid/widget/TextView;

.field private t7:Landroid/widget/TextView;

.field private t8:Landroid/widget/TextView;

.field private t9:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "Inloc2_db"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->DbName:Ljava/lang/String;

    .line 29
    const/16 v0, 0x1e

    sput v0, Lindloc/indoor_location_2/activity/Location_Activity;->CAPTIME:I

    .line 30
    const-string v0, "tempt"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->T_TABLE:Ljava/lang/String;

    .line 31
    const-string v0, "Location_Activity"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    .line 32
    const-string v0, "locat_view"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->VIEW:Ljava/lang/String;

    .line 33
    const-string v0, "distanceOfAP"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->D_TABLE:Ljava/lang/String;

    .line 34
    const-string v0, "all_location"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->LOCATB_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "chosen_ap"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->APTB_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "fingerPrint"

    sput-object v0, Lindloc/indoor_location_2/activity/Location_Activity;->FPTB_NAME:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput v0, Lindloc/indoor_location_2/activity/Location_Activity;->K_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private LocateByDis()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 234
    sget-object v8, Lindloc/indoor_location_2/activity/Location_Activity;->D_TABLE:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "d asc"

    invoke-direct {p0, v8, v9, v10}, Lindloc/indoor_location_2/activity/Location_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    .local v0, "cursor5":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "sumx":I
    const/4 v3, 0x0

    .line 240
    .local v3, "sumy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v8, Lindloc/indoor_location_2/activity/Location_Activity;->K_VALUE:I

    if-lt v1, v8, :cond_0

    .line 245
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    sget-object v8, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sumx = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v8, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sumy = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget v8, Lindloc/indoor_location_2/activity/Location_Activity;->K_VALUE:I

    div-int v8, v2, v8

    int-to-double v4, v8

    .line 251
    .local v4, "x_":D
    sget v8, Lindloc/indoor_location_2/activity/Location_Activity;->K_VALUE:I

    div-int v8, v3, v8

    int-to-double v6, v8

    .line 252
    .local v6, "y_":D
    sget-object v8, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "x_ = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sget-object v8, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "y_ = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 255
    iput-wide v4, p0, Lindloc/indoor_location_2/activity/Location_Activity;->X_:D

    .line 256
    iput-wide v6, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Y_:D

    .line 257
    return-void

    .line 241
    .end local v4    # "x_":D
    .end local v6    # "y_":D
    :cond_0
    int-to-double v8, v2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v2, v8

    .line 242
    int-to-double v8, v3

    const/4 v10, 0x2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v3, v8

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private ShowLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-wide v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->X_:D

    double-to-int v0, v0

    sparse-switch v0, :sswitch_data_0

    .line 327
    const-string v0, "\u4e0d\u5728\u5b9a\u4f4d\u8303\u56f4\u5185"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    :goto_0
    :sswitch_0
    return-void

    .line 286
    :sswitch_1
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t6:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 289
    :sswitch_2
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 292
    :sswitch_3
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 295
    :sswitch_4
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 298
    :sswitch_5
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 313
    :sswitch_6
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t9:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 318
    :sswitch_7
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t7:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 323
    :sswitch_8
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t8:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_0
        0xcf -> :sswitch_0
        0xd0 -> :sswitch_0
        0xd1 -> :sswitch_0
        0xd2 -> :sswitch_0
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_1
        0xd6 -> :sswitch_2
        0xd7 -> :sswitch_3
        0xd8 -> :sswitch_4
        0xd9 -> :sswitch_5
        0xda -> :sswitch_0
        0xdb -> :sswitch_0
        0xdc -> :sswitch_0
        0xdd -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$0(Lindloc/indoor_location_2/activity/Location_Activity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->locating()V

    return-void
.end method

.method private calDistance()V
    .locals 29

    .prologue
    .line 162
    const-wide/high16 v15, -0x3fa7000000000000L    # -100.0

    .local v15, "fprss":D
    const-wide/high16 v17, -0x3fa7000000000000L    # -100.0

    .line 166
    .local v17, "nrss":D
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v19, "sd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->LOCATB_NAME:Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lindloc/indoor_location_2/activity/Location_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 169
    .local v11, "cursor1":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 221
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 222
    return-void

    .line 171
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 172
    .local v23, "x":Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 173
    .local v24, "y":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 175
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->APTB_NAME:Ljava/lang/String;

    const/16 v26, 0x0

    const-string v27, "id_ asc"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lindloc/indoor_location_2/activity/Location_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 176
    .local v12, "cursor2":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 203
    const-wide/16 v20, 0x0

    .line 204
    .local v20, "sum":D
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_4

    .line 209
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v22, "values":Landroid/content/ContentValues;
    const-string v25, "X_"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v25, "Y_"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v25, "d"

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 213
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "d = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v25, v0

    sget-object v26, Lindloc/indoor_location_2/activity/Location_Activity;->D_TABLE:Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 215
    .local v7, "check1":J
    const-wide/16 v25, -0x1

    cmp-long v25, v7, v25

    if-nez v25, :cond_5

    .line 216
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    const-string v26, "\u6570\u636e\u63d2\u5165\u5931\u8d25\uff01"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 178
    .end local v7    # "check1":J
    .end local v20    # "sum":D
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "ap":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "X_ ="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " and Y_ ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " and mac =\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "condition1":Ljava/lang/String;
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->FPTB_NAME:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v9, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 181
    .local v13, "cursor3":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 187
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 188
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "mac =\'"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, "condition2":Ljava/lang/String;
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "mac ="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->VIEW:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v10, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 191
    .local v14, "cursor4":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 197
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 198
    sub-double v25, v15, v17

    const-wide/high16 v27, 0x4000000000000000L    # 2.0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 183
    .end local v10    # "condition2":Ljava/lang/String;
    .end local v14    # "cursor4":Landroid/database/Cursor;
    :cond_2
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 184
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "fprss = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 193
    .restart local v10    # "condition2":Ljava/lang/String;
    .restart local v14    # "cursor4":Landroid/database/Cursor;
    :cond_3
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 194
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "nrss = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 204
    .end local v6    # "ap":Ljava/lang/String;
    .end local v9    # "condition1":Ljava/lang/String;
    .end local v10    # "condition2":Ljava/lang/String;
    .end local v13    # "cursor3":Landroid/database/Cursor;
    .end local v14    # "cursor4":Landroid/database/Cursor;
    .restart local v20    # "sum":D
    :cond_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Double;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 205
    .local v4, "a":D
    add-double v20, v20, v4

    .line 206
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "sum = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 218
    .end local v4    # "a":D
    .restart local v7    # "check1":J
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_5
    sget-object v25, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u6570\u636e\u63d2\u5165\u6210\u529f\uff01"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private collectCycle()V
    .locals 1

    .prologue
    .line 112
    sget v0, Lindloc/indoor_location_2/activity/Location_Activity;->CAPTIME:I

    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_0

    .line 115
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->up_date()V

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private collect_data()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->dbbuild()V

    .line 84
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->collectCycle()V

    .line 85
    return-void
.end method

.method private dbbuild()V
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lindloc/indoor_location_2/sqlite/DB_helper;

    sget-object v1, Lindloc/indoor_location_2/activity/Location_Activity;->DbName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lindloc/indoor_location_2/sqlite/DB_helper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 90
    .local v0, "dbHelper":Lindloc/indoor_location_2/sqlite/DB_helper;
    invoke-virtual {v0}, Lindloc/indoor_location_2/sqlite/DB_helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    .line 93
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drop table if exists "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->T_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create table if not exists "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->T_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    const-string v3, "( id_ integer primary key autoincrement,mac varchar,rss integer)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create view if not exists "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->VIEW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    const-string v3, " as select mac,avg(rss) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->T_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " group by mac"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drop table if exists "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->D_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create table if not exists "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->D_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    const-string v3, "( id_ integer primary key autoincrement,X_ integer, Y_ integer,d double)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private getLocation()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->calDistance()V

    .line 156
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->LocateByDis()V

    .line 157
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->ShowLocation()V

    .line 158
    return-void
.end method

.method private get_cursor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 226
    .local v8, "cur":Landroid/database/Cursor;
    return-object v8
.end method

.method private insertdata(Ljava/lang/String;I)V
    .locals 6
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "r"    # I

    .prologue
    .line 143
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "mac"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "rss"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    iget-object v3, p0, Lindloc/indoor_location_2/activity/Location_Activity;->Db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lindloc/indoor_location_2/activity/Location_Activity;->T_TABLE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 147
    .local v0, "check1":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 148
    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    const-string v4, "\u6570\u636e\u63d2\u5165\u5931\u8d25\uff01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v3, Lindloc/indoor_location_2/activity/Location_Activity;->M:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u63d2\u5165\u6210\u529f\uff01"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private locating()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->collect_data()V

    .line 77
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->getLocation()V

    .line 79
    return-void
.end method

.method private up_date()V
    .locals 2

    .prologue
    .line 120
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lindloc/indoor_location_2/activity/Location_Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 121
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 122
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->listResult:Ljava/util/List;

    .line 124
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->listResult:Ljava/util/List;

    .line 126
    invoke-direct {p0}, Lindloc/indoor_location_2/activity/Location_Activity;->upload()V

    .line 127
    return-void
.end method

.method private upload()V
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->listResult:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lindloc/indoor_location_2/activity/Location_Activity;->listResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    :goto_1
    return-void

    .line 132
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 133
    .local v0, "myScanResult":Landroid/net/wifi/ScanResult;
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v2, v3}, Lindloc/indoor_location_2/activity/Location_Activity;->insertdata(Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    .end local v0    # "myScanResult":Landroid/net/wifi/ScanResult;
    :cond_1
    const-string v1, "wifi\u63a5\u6536\u5217\u8868\u4e3a\u7a7a"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->setContentView(I)V

    .line 46
    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t2:Landroid/widget/TextView;

    .line 47
    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t3:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t4:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f080017

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t5:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f080018

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t6:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t7:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t8:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f08001b

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lindloc/indoor_location_2/activity/Location_Activity;->t9:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "bt1":Landroid/widget/Button;
    new-instance v2, Lindloc/indoor_location_2/activity/Location_Activity$1;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Location_Activity$1;-><init>(Lindloc/indoor_location_2/activity/Location_Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lindloc/indoor_location_2/activity/Location_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, "bt3":Landroid/widget/Button;
    new-instance v2, Lindloc/indoor_location_2/activity/Location_Activity$2;

    invoke-direct {v2, p0}, Lindloc/indoor_location_2/activity/Location_Activity$2;-><init>(Lindloc/indoor_location_2/activity/Location_Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
