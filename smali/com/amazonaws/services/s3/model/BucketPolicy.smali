.class public Lcom/amazonaws/services/s3/model/BucketPolicy;
.super Ljava/lang/Object;
.source "BucketPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private policyText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyText()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketPolicy;->policyText:Ljava/lang/String;

    return-object v0
.end method

.method public setPolicyText(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketPolicy;->policyText:Ljava/lang/String;

    return-void
.end method
