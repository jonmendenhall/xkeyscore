.class public Lcom/amazonaws/auth/policy/resources/S3ObjectResource;
.super Lcom/amazonaws/auth/policy/Resource;
.source "S3ObjectResource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "aws"

    .line 74
    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/auth/policy/resources/S3ObjectResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "arn:%s:s3:::%s/%s"

    const/4 v1, 0x3

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    return-void
.end method
