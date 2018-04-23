.class public Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
.super Ljava/lang/Object;
.source "BucketTaggingConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private tagSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/TagSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/TagSet;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getAllTagSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/TagSet;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    return-object v0
.end method

.method public getTagSet()Lcom/amazonaws/services/s3/model/TagSet;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/TagSet;

    return-object v0
.end method

.method public getTagSetAtIndex(I)Lcom/amazonaws/services/s3/model/TagSet;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/TagSet;

    return-object p1
.end method

.method public setTagSets(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/s3/model/TagSet;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "{"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TagSets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->getAllTagSets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs withTagSets([Lcom/amazonaws/services/s3/model/TagSet;)Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 87
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->tagSets:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
