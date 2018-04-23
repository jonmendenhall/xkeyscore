.class public Lcom/onecode/s3/callback/S3Callback;
.super Ljava/lang/Object;
.source "S3Callback.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionCallback:Ljava/lang/String;

.field private extra:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/onecode/s3/callback/S3Callback;->actionCallback:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/onecode/s3/callback/S3Callback;->extra:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public getActionCallback()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/onecode/s3/callback/S3Callback;->actionCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/io/Serializable;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/onecode/s3/callback/S3Callback;->extra:Ljava/io/Serializable;

    return-object v0
.end method
