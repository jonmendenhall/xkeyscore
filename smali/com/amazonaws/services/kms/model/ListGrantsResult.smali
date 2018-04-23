.class public Lcom/amazonaws/services/kms/model/ListGrantsResult;
.super Ljava/lang/Object;
.source "ListGrantsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private grants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private nextMarker:Ljava/lang/String;

.field private truncated:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->grants:Ljava/util/List;

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

    if-nez p1, :cond_1

    return v1

    .line 310
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ListGrantsResult;

    if-nez v2, :cond_2

    return v1

    .line 312
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ListGrantsResult;

    .line 314
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 316
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 318
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 320
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 321
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 323
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_5

    :cond_c
    move v3, v1

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 325
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 326
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getGrants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->grants:Ljava/util/List;

    return-object v0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncated()Ljava/lang/Boolean;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->truncated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 297
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 298
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 299
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public isTruncated()Ljava/lang/Boolean;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->truncated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setGrants(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->grants:Ljava/util/List;

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->grants:Ljava/util/List;

    return-void
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->nextMarker:Ljava/lang/String;

    return-void
.end method

.method public setTruncated(Ljava/lang/Boolean;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->truncated:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextMarker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getNextMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getTruncated()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, "}"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withGrants(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/ListGrantsResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ListGrantsResult;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->setGrants(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrants([Lcom/amazonaws/services/kms/model/GrantListEntry;)Lcom/amazonaws/services/kms/model/ListGrantsResult;
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListGrantsResult;->getGrants()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->grants:Ljava/util/List;

    .line 99
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 100
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->grants:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withNextMarker(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ListGrantsResult;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->nextMarker:Ljava/lang/String;

    return-object p0
.end method

.method public withTruncated(Ljava/lang/Boolean;)Lcom/amazonaws/services/kms/model/ListGrantsResult;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListGrantsResult;->truncated:Ljava/lang/Boolean;

    return-object p0
.end method
