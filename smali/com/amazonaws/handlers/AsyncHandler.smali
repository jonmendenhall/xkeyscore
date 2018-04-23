.class public interface abstract Lcom/amazonaws/handlers/AsyncHandler;
.super Ljava/lang/Object;
.source "AsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQUEST:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;TRESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method
