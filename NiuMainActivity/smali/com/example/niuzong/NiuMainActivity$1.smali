.class Lcom/example/niuzong/NiuMainActivity$1;
.super Ljava/lang/Object;
.source "NiuMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/niuzong/NiuMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/niuzong/NiuMainActivity;


# direct methods
.method constructor <init>(Lcom/example/niuzong/NiuMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/niuzong/NiuMainActivity$1;->this$0:Lcom/example/niuzong/NiuMainActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/niuzong/NiuMainActivity$1;->this$0:Lcom/example/niuzong/NiuMainActivity;

    const-class v2, Lcom/example/niuzong/PointCol;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/niuzong/NiuMainActivity$1;->this$0:Lcom/example/niuzong/NiuMainActivity;

    invoke-virtual {v1, v0}, Lcom/example/niuzong/NiuMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
