.class Lcom/example/niuzong/MD$4;
.super Ljava/lang/Object;
.source "MD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/niuzong/MD;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/niuzong/MD;


# direct methods
.method constructor <init>(Lcom/example/niuzong/MD;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/niuzong/MD$4;->this$0:Lcom/example/niuzong/MD;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/niuzong/MD$4;->this$0:Lcom/example/niuzong/MD;

    const-class v2, Lcom/example/niuzong/NiuMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/example/niuzong/MD$4;->this$0:Lcom/example/niuzong/MD;

    invoke-virtual {v1, v0}, Lcom/example/niuzong/MD;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
