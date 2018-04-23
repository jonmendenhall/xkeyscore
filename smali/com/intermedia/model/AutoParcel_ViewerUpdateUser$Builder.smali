.class final Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;
.super Lcom/intermedia/model/ViewerUpdateUser$Builder;
.source "AutoParcel_ViewerUpdateUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;
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

.field private viewerState:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/intermedia/model/ViewerUpdateUser$Builder;-><init>()V

    .line 121
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/ViewerUpdateUser;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/intermedia/model/ViewerUpdateUser$Builder;-><init>()V

    .line 121
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    .line 129
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->avatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    .line 130
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->userId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->userId(J)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    .line 131
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->username()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->username(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    .line 132
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->viewerState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->viewerState(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;

    return-void
.end method


# virtual methods
.method public avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/intermedia/model/ViewerUpdateUser;
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const-string v0, "userId"

    const-string v2, "username"

    const-string v3, "viewerState"

    .line 160
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 165
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 166
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
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

    .line 171
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->avatarUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->userId:J

    iget-object v6, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->username:Ljava/lang/String;

    iget-object v7, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->viewerState:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$1;)V

    return-object v0
.end method

.method public userId(J)Lcom/intermedia/model/ViewerUpdateUser$Builder;
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->userId:J

    .line 142
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->username:Ljava/lang/String;

    .line 148
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public viewerState(Ljava/lang/String;)Lcom/intermedia/model/ViewerUpdateUser$Builder;
    .locals 1

    .line 153
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->viewerState:Ljava/lang/String;

    .line 154
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
