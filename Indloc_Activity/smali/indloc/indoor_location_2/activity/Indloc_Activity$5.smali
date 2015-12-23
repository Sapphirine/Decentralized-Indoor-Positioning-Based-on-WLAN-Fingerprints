.class Lindloc/indoor_location_2/activity/Indloc_Activity$5;
.super Ljava/lang/Object;
.source "Indloc_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lindloc/indoor_location_2/activity/Indloc_Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;


# direct methods
.method constructor <init>(Lindloc/indoor_location_2/activity/Indloc_Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lindloc/indoor_location_2/activity/Indloc_Activity$5;->this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Indloc_Activity$5;->this$0:Lindloc/indoor_location_2/activity/Indloc_Activity;

    invoke-virtual {v0}, Lindloc/indoor_location_2/activity/Indloc_Activity;->finish()V

    .line 64
    return-void
.end method
