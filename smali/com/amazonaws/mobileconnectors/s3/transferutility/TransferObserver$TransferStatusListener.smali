.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
.super Ljava/lang/Object;
.source "TransferObserver.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;


# direct methods
.method private constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;)V
    .locals 0

    .line 255
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(IJJ)V
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-static {p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->access$202(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J

    .line 267
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-static {p1, p4, p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->access$302(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J

    return-void
.end method

.method public onStateChanged(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->access$102(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-void
.end method
