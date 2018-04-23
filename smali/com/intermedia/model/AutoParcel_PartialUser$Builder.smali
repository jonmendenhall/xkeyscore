.class final Lcom/intermedia/model/AutoParcel_PartialUser$Builder;
.super Lcom/intermedia/model/PartialUser$Builder;
.source "AutoParcel_PartialUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_PartialUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;

.field private userId:J

.field private username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/intermedia/model/PartialUser$Builder;-><init>()V

    .line 105
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/PartialUser;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/intermedia/model/PartialUser$Builder;-><init>()V

    .line 105
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->set$:Ljava/util/BitSet;

    .line 112
    invoke-virtual {p1}, Lcom/intermedia/model/PartialUser;->avatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/PartialUser$Builder;

    .line 113
    invoke-virtual {p1}, Lcom/intermedia/model/PartialUser;->userId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->userId(J)Lcom/intermedia/model/PartialUser$Builder;

    .line 114
    invoke-virtual {p1}, Lcom/intermedia/model/PartialUser;->username()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->username(Ljava/lang/String;)Lcom/intermedia/model/PartialUser$Builder;

    return-void
.end method


# virtual methods
.method public avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/PartialUser$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/intermedia/model/PartialUser;
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    const-string v0, "userId"

    const-string v2, "username"

    .line 136
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 141
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_PartialUser;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->avatarUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->userId:J

    iget-object v6, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->username:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/intermedia/model/AutoParcel_PartialUser;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/intermedia/model/AutoParcel_PartialUser$1;)V

    return-object v0
.end method

.method public userId(J)Lcom/intermedia/model/PartialUser$Builder;
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->userId:J

    .line 124
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/intermedia/model/PartialUser$Builder;
    .locals 1

    .line 129
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->username:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_PartialUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
