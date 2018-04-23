.class public interface abstract Lcom/amazonaws/auth/Presigner;
.super Ljava/lang/Object;
.source "Presigner.java"


# virtual methods
.method public abstract presignRequest(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/auth/AWSCredentials;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method
