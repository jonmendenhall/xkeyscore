.class Landroid/arch/lifecycle/LiveData$2;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;)V
    .locals 0

    .line 100
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {}, Landroid/arch/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/arch/lifecycle/LiveData;->access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$2;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method