.class public Lcom/amazonaws/services/s3/model/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    check-cast p1, Lcom/amazonaws/services/s3/model/Tag;

    .line 102
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v2, v0

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    return v2
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Tag;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Tag;->value:Ljava/lang/String;

    return-void
.end method

.method public withKey(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Tag;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/Tag;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Tag;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/Tag;->setValue(Ljava/lang/String;)V

    return-object p0
.end method
