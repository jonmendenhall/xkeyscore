.class public Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;
.super Ljava/lang/Object;
.source "DeleteObjectsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/DeleteObjectsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVersion"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->key:Ljava/lang/String;

    .line 341
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/DeleteObjectsRequest$KeyVersion;->version:Ljava/lang/String;

    return-object v0
.end method
