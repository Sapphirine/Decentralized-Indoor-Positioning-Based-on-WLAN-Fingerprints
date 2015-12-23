.class public Lindloc/indoor_location_2/activity/Indloc_Activity;
.super Landroid/app/Activity;
.source "Indloc_Activity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lindloc/indoor_location_2/activity/Indloc_Activity;->setContentView(I)V

    .line 21
    const v5, 0x7f080001

    invoke-virtual {p0, v5}, Lindloc/indoor_location_2/activity/Indloc_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    .local v0, "bt1":Landroid/widget/Button;
    new-instance v5, Lindloc/indoor_location_2/activity/Indloc_Activity$1;

    invoke-direct {v5, p0}, Lindloc/indoor_location_2/activity/Indloc_Activity$1;-><init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v5, 0x7f080002

    invoke-virtual {p0, v5}, Lindloc/indoor_location_2/activity/Indloc_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    .local v1, "bt2":Landroid/widget/Button;
    new-instance v5, Lindloc/indoor_location_2/activity/Indloc_Activity$2;

    invoke-direct {v5, p0}, Lindloc/indoor_location_2/activity/Indloc_Activity$2;-><init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v5, 0x7f080004

    invoke-virtual {p0, v5}, Lindloc/indoor_location_2/activity/Indloc_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 42
    .local v2, "bt3":Landroid/widget/Button;
    new-instance v5, Lindloc/indoor_location_2/activity/Indloc_Activity$3;

    invoke-direct {v5, p0}, Lindloc/indoor_location_2/activity/Indloc_Activity$3;-><init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Lindloc/indoor_location_2/activity/Indloc_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 52
    .local v3, "bt4":Landroid/widget/Button;
    new-instance v5, Lindloc/indoor_location_2/activity/Indloc_Activity$4;

    invoke-direct {v5, p0}, Lindloc/indoor_location_2/activity/Indloc_Activity$4;-><init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v5, 0x7f080005

    invoke-virtual {p0, v5}, Lindloc/indoor_location_2/activity/Indloc_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 61
    .local v4, "bt5":Landroid/widget/Button;
    new-instance v5, Lindloc/indoor_location_2/activity/Indloc_Activity$5;

    invoke-direct {v5, p0}, Lindloc/indoor_location_2/activity/Indloc_Activity$5;-><init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 72
    invoke-virtual {p0}, Lindloc/indoor_location_2/activity/Indloc_Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method
