.class final Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;
.super Lcom/intermedia/model/ViewerUpdateUser;
.source "AutoParcel_ViewerUpdateUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final avatarUrl:Ljava/lang/String;

.field private final userId:J

.field private final username:Ljava/lang/String;

.field private final viewerState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    const-class v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 104
    sget-object v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/intermedia/model/ViewerUpdateUser;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    if-nez p4, :cond_0

    .line 21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null username"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_0
    iput-object p4, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->username:Ljava/lang/String;

    if-nez p5, :cond_1

    .line 25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null viewerState"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    iput-object p5, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->viewerState:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_ViewerUpdateUser$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public avatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

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

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/ViewerUpdateUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 67
    check-cast p1, Lcom/intermedia/model/ViewerUpdateUser;

    .line 68
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->avatarUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->avatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-wide v3, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    .line 69
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->userId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->username:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->username()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->viewerState:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/intermedia/model/ViewerUpdateUser;->viewerState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 82
    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/2addr v0, v1

    .line 84
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 86
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->viewerState:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewerUpdateUser{avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->viewerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userId()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    return-wide v0
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public viewerState()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->viewerState:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 109
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 110
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 111
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 112
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_ViewerUpdateUser;->viewerState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
