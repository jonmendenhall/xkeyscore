.class public Lcom/amazonaws/services/s3/model/ObjectTagging;
.super Ljava/lang/Object;
.source "ObjectTagging.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private tagSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->tagSet:Ljava/util/List;

    return-void
.end method

.method private withTagSet(Ljava/util/List;)Lcom/amazonaws/services/s3/model/ObjectTagging;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ObjectTagging;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->tagSet:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getTagSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->tagSet:Ljava/util/List;

    return-object v0
.end method

.method public setTagSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/Tag;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectTagging;->tagSet:Ljava/util/List;

    return-void
.end method
