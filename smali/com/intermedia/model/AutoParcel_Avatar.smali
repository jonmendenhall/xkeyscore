.class final Lcom/intermedia/model/AutoParcel_Avatar;
.super Lcom/intermedia/model/Avatar;
.source "AutoParcel_Avatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_Avatar$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_Avatar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final avatarUrl:Ljava/lang/String;

.field private final created:Ljava/util/Date;

.field private final userId:J

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/intermedia/model/AutoParcel_Avatar$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_Avatar$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_Avatar;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 104
    const-class v0, Lcom/intermedia/model/AutoParcel_Avatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_Avatar;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 107
    sget-object v0, Lcom/intermedia/model/AutoParcel_Avatar;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Avatar;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Date;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Avatar;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lcom/intermedia/model/AutoParcel_Avatar;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/model/AutoParcel_Avatar;-><init>(Ljava/lang/String;Ljava/util/Date;JLjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_Avatar$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_Avatar;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Date;JLjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/intermedia/model/Avatar;-><init>()V

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null avatarUrl"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->avatarUrl:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null created"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    iput-object p2, p0, Lcom/intermedia/model/AutoParcel_Avatar;->created:Ljava/util/Date;

    .line 27
    iput-wide p3, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    if-nez p5, :cond_2

    .line 29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null username"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    iput-object p5, p0, Lcom/intermedia/model/AutoParcel_Avatar;->username:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;JLjava/lang/String;Lcom/intermedia/model/AutoParcel_Avatar$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p5}, Lcom/intermedia/model/AutoParcel_Avatar;-><init>(Ljava/lang/String;Ljava/util/Date;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public avatarUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Avatar;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public created()Ljava/util/Date;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Avatar;->created:Ljava/util/Date;

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

    .line 69
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Avatar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 70
    check-cast p1, Lcom/intermedia/model/Avatar;

    .line 71
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Avatar;->avatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->created:Ljava/util/Date;

    .line 72
    invoke-virtual {p1}, Lcom/intermedia/model/Avatar;->created()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    .line 73
    invoke-virtual {p1}, Lcom/intermedia/model/Avatar;->userId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->username:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/intermedia/model/Avatar;->username()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 83
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Avatar;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 85
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Avatar;->created:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 87
    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/2addr v0, v1

    .line 89
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lcom/intermedia/model/Avatar$Builder;
    .locals 1

    .line 125
    new-instance v0, Lcom/intermedia/model/AutoParcel_Avatar$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_Avatar$Builder;-><init>(Lcom/intermedia/model/Avatar;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avatar{avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->created:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Avatar;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    return-wide v0
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Avatar;->username:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 112
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Avatar;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Avatar;->created:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 114
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_Avatar;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 115
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Avatar;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
