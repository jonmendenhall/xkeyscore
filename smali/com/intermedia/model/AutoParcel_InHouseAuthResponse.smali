.class final Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;
.super Lcom/intermedia/model/InHouseAuthResponse;
.source "AutoParcel_InHouseAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final admin:Z

.field private final avatarUrl:Ljava/lang/String;

.field private final guest:Z

.field private final loginToken:Ljava/lang/String;

.field private final tester:Z

.field private final userId:J

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    const-class v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    .line 149
    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;-><init>(ZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/intermedia/model/InHouseAuthResponse;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->admin:Z

    .line 27
    iput-boolean p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->guest:Z

    .line 28
    iput-boolean p3, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->tester:Z

    .line 29
    iput-wide p4, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    .line 30
    iput-object p6, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p9}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;-><init>(ZZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accessToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public admin()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->admin:Z

    return v0
.end method

.method public avatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 99
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/InHouseAuthResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 100
    check-cast p1, Lcom/intermedia/model/InHouseAuthResponse;

    .line 101
    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->admin:Z

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->admin()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->guest:Z

    .line 102
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->guest()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->tester:Z

    .line 103
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->tester()Z

    move-result v3

    if-ne v1, v3, :cond_5

    iget-wide v3, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    .line 104
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->userId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->accessToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->accessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->avatarUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->avatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->loginToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->loginToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 108
    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->username()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/InHouseAuthResponse;->username()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0

    :cond_6
    return v2
.end method

.method public guest()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->guest:Z

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 117
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->admin:Z

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

    .line 119
    iget-boolean v4, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->guest:Z

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    xor-int/2addr v0, v4

    mul-int/2addr v0, v3

    .line 121
    iget-boolean v4, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->tester:Z

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    int-to-long v0, v0

    .line 123
    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    const/16 v2, 0x20

    ushr-long/2addr v4, v2

    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    xor-long/2addr v4, v6

    xor-long/2addr v0, v4

    long-to-int v0, v0

    mul-int/2addr v0, v3

    .line 125
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 127
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 129
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    mul-int/2addr v0, v3

    .line 131
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    return v0
.end method

.method public loginToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    return-object v0
.end method

.method public tester()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->tester:Z

    return v0
.end method

.method public toBuilder()Lcom/intermedia/model/InHouseAuthResponse$Builder;
    .locals 1

    .line 171
    new-instance v0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse$Builder;-><init>(Lcom/intermedia/model/InHouseAuthResponse;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InHouseAuthResponse{admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->admin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", guest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->guest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tester="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->tester:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loginToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userId()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    return-wide v0
.end method

.method public username()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 154
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->admin:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 155
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->guest:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 156
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->tester:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 157
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 158
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 159
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 160
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->loginToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 161
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_InHouseAuthResponse;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
