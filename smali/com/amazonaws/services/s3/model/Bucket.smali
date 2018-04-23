.class public Lcom/amazonaws/services/s3/model/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77ffb7cc751194fcL


# instance fields
.field private creationDate:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private owner:Lcom/amazonaws/services/s3/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 69
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    .line 69
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Bucket;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Bucket [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Bucket;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Bucket;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Bucket;->getOwner()Lcom/amazonaws/services/s3/model/Owner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
