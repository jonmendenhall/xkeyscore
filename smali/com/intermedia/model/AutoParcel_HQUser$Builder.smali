.class final Lcom/intermedia/model/AutoParcel_HQUser$Builder;
.super Lcom/intermedia/model/HQUser$Builder;
.source "AutoParcel_HQUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_HQUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private blocked:Z

.field private blocksMe:Z

.field private deviceTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gamesPlayed:I

.field private highScore:I

.field private leaderboard:Lcom/intermedia/model/Leaderboard;

.field private lives:J

.field private referred:Ljava/lang/Boolean;

.field private referringUserId:Ljava/lang/Long;

.field private refreshDeviceToken:Z

.field private final set$:Ljava/util/BitSet;

.field private stk:Ljava/lang/String;

.field private userId:J

.field private username:Ljava/lang/String;

.field private winCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/intermedia/model/HQUser$Builder;-><init>()V

    .line 272
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/HQUser;)V
    .locals 2

    .line 290
    invoke-direct {p0}, Lcom/intermedia/model/HQUser$Builder;-><init>()V

    .line 272
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    .line 291
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->refreshDeviceToken()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->refreshDeviceToken(Z)Lcom/intermedia/model/HQUser$Builder;

    .line 292
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->highScore()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->highScore(I)Lcom/intermedia/model/HQUser$Builder;

    .line 293
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->lives()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->lives(J)Lcom/intermedia/model/HQUser$Builder;

    .line 294
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->userId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->userId(J)Lcom/intermedia/model/HQUser$Builder;

    .line 295
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->blocked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->blocked(Z)Lcom/intermedia/model/HQUser$Builder;

    .line 296
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->blocksMe()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->blocksMe(Z)Lcom/intermedia/model/HQUser$Builder;

    .line 297
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->gamesPlayed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->gamesPlayed(I)Lcom/intermedia/model/HQUser$Builder;

    .line 298
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->referred()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->referred(Ljava/lang/Boolean;)Lcom/intermedia/model/HQUser$Builder;

    .line 299
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->avatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;

    .line 300
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->referringUserId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->referringUserId(Ljava/lang/Long;)Lcom/intermedia/model/HQUser$Builder;

    .line 301
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->username(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;

    .line 302
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->leaderboard()Lcom/intermedia/model/Leaderboard;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->leaderboard(Lcom/intermedia/model/Leaderboard;)Lcom/intermedia/model/HQUser$Builder;

    .line 303
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->deviceTokens()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->deviceTokens(Ljava/util/List;)Lcom/intermedia/model/HQUser$Builder;

    .line 304
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->stk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->stk(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;

    .line 305
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->winCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->winCount(I)Lcom/intermedia/model/HQUser$Builder;

    return-void
.end method


# virtual methods
.method public avatarUrl(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->avatarUrl:Ljava/lang/String;

    return-object p0
.end method

.method public blocked(Z)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 333
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->blocked:Z

    .line 334
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public blocksMe(Z)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 339
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->blocksMe:Z

    .line 340
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public build()Lcom/intermedia/model/HQUser;
    .locals 25

    move-object/from16 v0, p0

    .line 393
    iget-object v1, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    const-string v3, "refreshDeviceToken"

    const-string v4, "highScore"

    const-string v5, "lives"

    const-string v6, "userId"

    const-string v7, "blocked"

    const-string v8, "blocksMe"

    const-string v9, "gamesPlayed"

    const-string v10, "username"

    const-string v11, "winCount"

    .line 394
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 399
    iget-object v5, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x20

    .line 400
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_2
    new-instance v1, Lcom/intermedia/model/AutoParcel_HQUser;

    iget-boolean v4, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->refreshDeviceToken:Z

    iget v5, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->highScore:I

    iget-wide v6, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->lives:J

    iget-wide v8, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->userId:J

    iget-boolean v10, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->blocked:Z

    iget-boolean v11, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->blocksMe:Z

    iget v12, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->gamesPlayed:I

    iget-object v13, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->referred:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->avatarUrl:Ljava/lang/String;

    iget-object v15, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->referringUserId:Ljava/lang/Long;

    iget-object v2, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->leaderboard:Lcom/intermedia/model/Leaderboard;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->deviceTokens:Ljava/util/List;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->stk:Ljava/lang/String;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->winCount:I

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v16, v22

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move/from16 v20, v2

    invoke-direct/range {v3 .. v21}, Lcom/intermedia/model/AutoParcel_HQUser;-><init>(ZIJJZZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/intermedia/model/Leaderboard;Ljava/util/List;Ljava/lang/String;ILcom/intermedia/model/AutoParcel_HQUser$1;)V

    return-object v1
.end method

.method public deviceTokens(Ljava/util/List;)Lcom/intermedia/model/HQUser$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/intermedia/model/HQUser$Builder;"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->deviceTokens:Ljava/util/List;

    return-object p0
.end method

.method public gamesPlayed(I)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 345
    iput p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->gamesPlayed:I

    .line 346
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public highScore(I)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 315
    iput p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->highScore:I

    .line 316
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public leaderboard(Lcom/intermedia/model/Leaderboard;)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->leaderboard:Lcom/intermedia/model/Leaderboard;

    return-object p0
.end method

.method public lives(J)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 321
    iput-wide p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->lives:J

    .line 322
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public referred(Ljava/lang/Boolean;)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->referred:Ljava/lang/Boolean;

    return-object p0
.end method

.method public referringUserId(Ljava/lang/Long;)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->referringUserId:Ljava/lang/Long;

    return-object p0
.end method

.method public refreshDeviceToken(Z)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 309
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->refreshDeviceToken:Z

    .line 310
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public stk(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->stk:Ljava/lang/String;

    return-object p0
.end method

.method public userId(J)Lcom/intermedia/model/HQUser$Builder;
    .locals 0

    .line 327
    iput-wide p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->userId:J

    .line 328
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 366
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->username:Ljava/lang/String;

    .line 367
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public winCount(I)Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 387
    iput p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->winCount:I

    .line 388
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;->set$:Ljava/util/BitSet;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
