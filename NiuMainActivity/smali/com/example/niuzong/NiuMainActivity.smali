.class public Lcom/example/niuzong/NiuMainActivity;
.super Landroid/app/Activity;
.source "NiuMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/high16 v4, 0x7f030000

    invoke-virtual {p0, v4}, Lcom/example/niuzong/NiuMainActivity;->setContentView(I)V

    .line 20
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/example/niuzong/NiuMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "bt1":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/NiuMainActivity$1;

    invoke-direct {v4, p0}, Lcom/example/niuzong/NiuMainActivity$1;-><init>(Lcom/example/niuzong/NiuMainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/example/niuzong/NiuMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 31
    .local v1, "bt2":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/NiuMainActivity$2;

    invoke-direct {v4, p0}, Lcom/example/niuzong/NiuMainActivity$2;-><init>(Lcom/example/niuzong/NiuMainActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v4, 0x7f080003

    invoke-virtual {p0, v4}, Lcom/example/niuzong/NiuMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 41
    .local v2, "bt3":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/NiuMainActivity$3;

    invoke-direct {v4, p0}, Lcom/example/niuzong/NiuMainActivity$3;-><init>(Lcom/example/niuzong/NiuMainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/example/niuzong/NiuMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 50
    .local v3, "bt4":Landroid/widget/Button;
    new-instance v4, Lcom/example/niuzong/NiuMainActivity$4;

    invoke-direct {v4, p0}, Lcom/example/niuzong/NiuMainActivity$4;-><init>(Lcom/example/niuzong/NiuMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/example/niuzong/NiuMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method
