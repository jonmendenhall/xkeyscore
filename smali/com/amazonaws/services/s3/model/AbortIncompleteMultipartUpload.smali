.class public Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
.super Ljava/lang/Object;
.source "AbortIncompleteMultipartUpload.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private daysAfterInitiation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->clone()Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    check-cast p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 55
    iget v2, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    iget p1, p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDaysAfterInitiation()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    return v0
.end method

.method public setDaysAfterInitiation(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->daysAfterInitiation:I

    return-void
.end method

.method public withDaysAfterInitiation(I)Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->setDaysAfterInitiation(I)V

    return-object p0
.end method
