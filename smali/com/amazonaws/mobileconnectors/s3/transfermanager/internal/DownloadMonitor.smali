.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;
.super Ljava/lang/Object;
.source "DownloadMonitor.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;


# instance fields
.field private final download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;->download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    .line 27
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;->future:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadMonitor;->download:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/DownloadImpl;->isDone()Z

    move-result v0

    return v0
.end method
