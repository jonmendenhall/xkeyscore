.class final Lcom/intermedia/model/AutoParcel_HQUser;
.super Lcom/intermedia/model/HQUser;
.source "AutoParcel_HQUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_HQUser$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_HQUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final avatarUrl:Ljava/lang/String;

.field private final blocked:Z

.field private final blocksMe:Z

.field private final deviceTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gamesPlayed:I

.field private final highScore:I

.field private final leaderboard:Lcom/intermedia/model/Leaderboard;

.field private final lives:J

.field private final referred:Ljava/lang/Boolean;

.field private final referringUserId:Ljava/lang/Long;

.field private final refreshDeviceToken:Z

.field private final stk:Ljava/lang/String;

.field private final userId:J

.field private final username:Ljava/lang/String;

.field private final winCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Lcom/intermedia/model/AutoParcel_HQUser$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_HQUser$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_HQUser;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 236
    const-class v0, Lcom/intermedia/model/AutoParcel_HQUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 20

    move-object/from16 v0, p1

    .line 239
    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/Boolean;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/Long;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/intermedia/model/Leaderboard;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/List;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    sget-object v1, Lcom/intermedia/model/AutoParcel_HQUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v19}, Lcom/intermedia/model/AutoParcel_HQUser;-><init>(ZIJJZZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/intermedia/model/Leaderboard;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_HQUser$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_HQUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZIJJZZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/intermedia/model/Leaderboard;Ljava/util/List;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIJJZZI",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/intermedia/model/Leaderboard;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    .line 40
    invoke-direct {v0}, Lcom/intermedia/model/HQUser;-><init>()V

    move v2, p1

    .line 41
    iput-boolean v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->refreshDeviceToken:Z

    move v2, p2

    .line 42
    iput v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->highScore:I

    move-wide v2, p3

    .line 43
    iput-wide v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    move-wide v2, p5

    .line 44
    iput-wide v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    move v2, p7

    .line 45
    iput-boolean v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->blocked:Z

    move v2, p8

    .line 46
    iput-boolean v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->blocksMe:Z

    move v2, p9

    .line 47
    iput v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->gamesPlayed:I

    move-object v2, p10

    .line 48
    iput-object v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    move-object v2, p11

    .line 49
    iput-object v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 50
    iput-object v2, v0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null username"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    iput-object v1, v0, Lcom/intermedia/model/AutoParcel_HQUser;->username:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 55
    iput-object v1, v0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    move-object/from16 v1, p15

    .line 56
    iput-object v1, v0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    move-object/from16 v1, p16

    .line 57
    iput-object v1, v0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    move/from16 v1, p17

    .line 58
    iput v1, v0, Lcom/intermedia/model/AutoParcel_HQUser;->winCount:I

    return-void
.end method

.method synthetic constructor <init>(ZIJJZZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/intermedia/model/Leaderboard;Ljava/util/List;Ljava/lang/String;ILcom/intermedia/model/AutoParcel_HQUser$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p17}, Lcom/intermedia/model/AutoParcel_HQUser;-><init>(ZIJJZZILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/intermedia/model/Leaderboard;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public avatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public blocked()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocked:Z

    return v0
.end method

.method public blocksMe()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocksMe:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deviceTokens()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 168
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/HQUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 169
    check-cast p1, Lcom/intermedia/model/HQUser;

    .line 170
    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->refreshDeviceToken:Z

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->refreshDeviceToken()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->highScore:I

    .line 171
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->highScore()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-wide v3, p0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    .line 172
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->lives()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-wide v3, p0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    .line 173
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->userId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocked:Z

    .line 174
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->blocked()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocksMe:Z

    .line 175
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->blocksMe()Z

    move-result v3

    if-ne v1, v3, :cond_7

    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->gamesPlayed:I

    .line 176
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->gamesPlayed()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->referred()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->referred()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->avatarUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->avatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 179
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->referringUserId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->referringUserId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->username:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->username()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    if-nez v1, :cond_4

    .line 181
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->leaderboard()Lcom/intermedia/model/Leaderboard;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->leaderboard()Lcom/intermedia/model/Leaderboard;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/intermedia/model/Leaderboard;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    if-nez v1, :cond_5

    .line 182
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->deviceTokens()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->deviceTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 183
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->stk()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->stk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->winCount:I

    .line 184
    invoke-virtual {p1}, Lcom/intermedia/model/HQUser;->winCount()I

    move-result p1

    if-ne v1, p1, :cond_7

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    return v0

    :cond_8
    return v2
.end method

.method public gamesPlayed()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->gamesPlayed:I

    return v0
.end method

.method public hashCode()I
    .locals 10

    .line 193
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->refreshDeviceToken:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int/2addr v0, v3

    .line 195
    iget v4, p0, Lcom/intermedia/model/AutoParcel_HQUser;->highScore:I

    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    int-to-long v4, v0

    .line 197
    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    const/16 v0, 0x20

    ushr-long/2addr v6, v0

    iget-wide v8, p0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/2addr v4, v3

    int-to-long v4, v4

    .line 199
    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    ushr-long/2addr v6, v0

    iget-wide v8, p0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    mul-int/2addr v0, v3

    .line 201
    iget-boolean v4, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocked:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 203
    iget-boolean v4, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocksMe:Z

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 205
    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->gamesPlayed:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 207
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 209
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 211
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 213
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 215
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    invoke-virtual {v1}, Lcom/intermedia/model/Leaderboard;->hashCode()I

    move-result v1

    :goto_5
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 217
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_6
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 219
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    xor-int/2addr v0, v2

    mul-int/2addr v0, v3

    .line 221
    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->winCount:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public highScore()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->highScore:I

    return v0
.end method

.method public leaderboard()Lcom/intermedia/model/Leaderboard;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    return-object v0
.end method

.method public lives()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    return-wide v0
.end method

.method public referred()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public referringUserId()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    return-object v0
.end method

.method public refreshDeviceToken()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->refreshDeviceToken:Z

    return v0
.end method

.method public stk()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lcom/intermedia/model/HQUser$Builder;
    .locals 1

    .line 268
    new-instance v0, Lcom/intermedia/model/AutoParcel_HQUser$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_HQUser$Builder;-><init>(Lcom/intermedia/model/HQUser;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQUser{refreshDeviceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->refreshDeviceToken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", highScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->highScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blocksMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocksMe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gamesPlayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->gamesPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", referred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referringUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", leaderboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", winCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intermedia/model/AutoParcel_HQUser;->winCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userId()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    return-wide v0
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public winCount()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->winCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 244
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->refreshDeviceToken:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 245
    iget p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->highScore:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 246
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->lives:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 247
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_HQUser;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 248
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocked:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 249
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->blocksMe:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 250
    iget p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->gamesPlayed:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 251
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referred:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 252
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 253
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->referringUserId:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 254
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 255
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->leaderboard:Lcom/intermedia/model/Leaderboard;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 256
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->deviceTokens:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 257
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->stk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 258
    iget p2, p0, Lcom/intermedia/model/AutoParcel_HQUser;->winCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
