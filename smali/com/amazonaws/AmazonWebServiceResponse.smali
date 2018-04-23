.class public Lcom/amazonaws/AmazonWebServiceResponse;
.super Ljava/lang/Object;
.source "AmazonWebServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private responseMetadata:Lcom/amazonaws/ResponseMetadata;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->responseMetadata:Lcom/amazonaws/ResponseMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->responseMetadata:Lcom/amazonaws/ResponseMetadata;

    invoke-virtual {v0}, Lcom/amazonaws/ResponseMetadata;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseMetadata()Lcom/amazonaws/ResponseMetadata;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->responseMetadata:Lcom/amazonaws/ResponseMetadata;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public setResponseMetadata(Lcom/amazonaws/ResponseMetadata;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceResponse;->responseMetadata:Lcom/amazonaws/ResponseMetadata;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceResponse;->result:Ljava/lang/Object;

    return-void
.end method
