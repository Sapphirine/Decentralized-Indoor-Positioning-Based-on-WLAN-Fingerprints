.class Lindloc/indoor_location_2/activity/Data_process_Activity$1;
.super Ljava/lang/Object;
.source "Data_process_Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lindloc/indoor_location_2/activity/Data_process_Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lindloc/indoor_location_2/activity/Data_process_Activity;


# direct methods
.method constructor <init>(Lindloc/indoor_location_2/activity/Data_process_Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lindloc/indoor_location_2/activity/Data_process_Activity$1;->this$0:Lindloc/indoor_location_2/activity/Data_process_Activity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lindloc/indoor_location_2/activity/Data_process_Activity$1;->this$0:Lindloc/indoor_location_2/activity/Data_process_Activity;

    # invokes: Lindloc/indoor_location_2/activity/Data_process_Activity;->begin_process()V
    invoke-static {v0}, Lindloc/indoor_location_2/activity/Data_process_Activity;->access$0(Lindloc/indoor_location_2/activity/Data_process_Activity;)V

    .line 49
    return-void
.end method
