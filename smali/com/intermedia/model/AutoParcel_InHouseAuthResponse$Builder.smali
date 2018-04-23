.class final Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;
.super Lcom/intermedia/model/InHouseAuthResponse$Builder;
.source "AutoParcel_InHouseAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private admin:Z

.field private avatarUrl:Ljava/lang/String;

.field private guest:Z

.field private loginToken:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;

.field private tester:Z

.field private userId:J

.field private username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/intermedia/model/InHouseAuthResponse$Builder;-><init>()V

    .line 175
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/InHouseAuthResponse;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/intermedia/model/InHouseAuthResponse$Builder;-><init>()V

    .line 175
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    .line 187
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->admin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->admin(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 188
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->guest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->guest(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 189
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->tester()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->tester(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 190
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->userId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->userId(J)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 191
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->accessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->accessToken(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 192
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->avatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 193
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->loginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->loginToken(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    .line 194
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->username()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->username(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;

    return-void
.end method


# virtual methods
.method public accessToken(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public admin(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 1

    .line 198
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->admin:Z

    .line 199
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/intermedia/model/InHouseAuthResponse;
    .locals 13

    .line 242
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const-string v0, "admin"

    const-string v2, "guest"

    const-string v3, "tester"

    const-string v4, "userId"

    .line 243
    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 248
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 249
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
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

    .line 254
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;

    iget-boolean v3, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->admin:Z

    iget-boolean v4, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->guest:Z

    iget-boolean v5, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->tester:Z

    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->userId:J

    iget-object v8, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->accessToken:Ljava/lang/String;

    iget-object v9, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->avatarUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->loginToken:Ljava/lang/String;

    iget-object v11, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->username:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;-><init>(ZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$1;)V

    return-object v0
.end method

.method public guest(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 1

    .line 204
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->guest:Z

    .line 205
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public loginToken(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->loginToken:Ljava/lang/String;

    return-object p0
.end method

.method public tester(Z)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 1

    .line 210
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->tester:Z

    .line 211
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public userId(J)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 0

    .line 216
    iput-wide p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->userId:J

    .line 217
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;->username:Ljava/lang/String;

    return-object p0
.end method
