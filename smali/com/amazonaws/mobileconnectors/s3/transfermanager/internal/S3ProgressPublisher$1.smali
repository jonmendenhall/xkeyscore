.class final Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;
.super Ljava/lang/Object;
.source "S3ProgressPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->publishTransferPersistable(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$persistableTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

.field final synthetic val$s3listener:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->val$s3listener:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->val$persistableTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->val$s3listener:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;->val$persistableTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;

    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;->onPersistableTransfer(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    return-void
.end method
