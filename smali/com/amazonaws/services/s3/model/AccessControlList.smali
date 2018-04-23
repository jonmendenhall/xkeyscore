.class public Lcom/amazonaws/services/s3/model/AccessControlList;
.super Ljava/lang/Object;
.source "AccessControlList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# static fields
.field private static final serialVersionUID:J = 0x70575c947c762418L


# instance fields
.field private grantList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation
.end field

.field private grantSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesterCharged:Z

.field private owner:Lcom/amazonaws/services/s3/model/Owner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method private checkState()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both grant set and grant list cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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

    .line 244
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 247
    :cond_2
    check-cast p1, Lcom/amazonaws/services/s3/model/AccessControlList;

    .line 249
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    if-nez v2, :cond_3

    .line 250
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    if-eqz v2, :cond_4

    return v1

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/Owner;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    if-nez v2, :cond_5

    .line 258
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    if-eqz v2, :cond_6

    return v1

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    iget-object v3, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 265
    :cond_6
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    if-nez v2, :cond_7

    .line 266
    iget-object p1, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    if-eqz p1, :cond_8

    return v1

    .line 269
    :cond_7
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    iget-object p1, p1, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public getGrants()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/AccessControlList;->checkState()V

    .line 181
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    .line 189
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    return-object v0
.end method

.method public getGrantsAsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Grant;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/AccessControlList;->checkState()V

    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    .line 219
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    return-object v0
.end method

.method public getOwner()Lcom/amazonaws/services/s3/model/Owner;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-object v0
.end method

.method public varargs grantAllPermissions([Lcom/amazonaws/services/s3/model/Grant;)V
    .locals 4

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 149
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/amazonaws/services/s3/model/AccessControlList;->grantPermission(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public grantPermission(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrantsAsList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/amazonaws/services/s3/model/Grant;

    invoke-direct {v1, p1, p2}, Lcom/amazonaws/services/s3/model/Grant;-><init>(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/Owner;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 230
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    return v2
.end method

.method public isRequesterCharged()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->isRequesterCharged:Z

    return v0
.end method

.method public revokeAllPermissions(Lcom/amazonaws/services/s3/model/Grantee;)V
    .locals 4

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrantsAsList()Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/Grant;

    .line 163
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->grantList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOwner(Lcom/amazonaws/services/s3/model/Owner;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->isRequesterCharged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessControlList [owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/AccessControlList;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", grants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrantsAsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
