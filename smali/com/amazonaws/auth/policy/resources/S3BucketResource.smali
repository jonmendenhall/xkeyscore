.class public Lcom/amazonaws/auth/policy/resources/S3BucketResource;
.super Lcom/amazonaws/auth/policy/Resource;
.source "S3BucketResource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arn:aws:s3:::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    return-void
.end method
