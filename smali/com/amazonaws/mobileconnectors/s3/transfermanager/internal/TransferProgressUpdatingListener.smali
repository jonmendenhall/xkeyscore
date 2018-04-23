.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;
.super Ljava/lang/Object;
.source "TransferProgressUpdatingListener.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# instance fields
.field private final transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 4

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getBytesTransferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    invoke-virtual {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;->updateProgress(J)V

    return-void
.end method
