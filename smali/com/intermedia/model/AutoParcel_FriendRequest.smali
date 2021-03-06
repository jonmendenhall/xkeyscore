.class final Lcom/intermedia/model/AutoParcel_FriendRequest;
.super Lcom/intermedia/model/FriendRequest;
.source "AutoParcel_FriendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_FriendRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final requestedUser:Lcom/intermedia/model/PartialUser;

.field private final requestingUser:Lcom/intermedia/model/PartialUser;

.field private final status:Lcom/intermedia/model/FriendStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/intermedia/model/AutoParcel_FriendRequest$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_FriendRequest$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_FriendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 91
    const-class v0, Lcom/intermedia/model/AutoParcel_FriendRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_FriendRequest;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 94
    sget-object v0, Lcom/intermedia/model/AutoParcel_FriendRequest;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/PartialUser;

    sget-object v1, Lcom/intermedia/model/AutoParcel_FriendRequest;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/model/PartialUser;

    sget-object v2, Lcom/intermedia/model/AutoParcel_FriendRequest;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/FriendStatus;

    invoke-direct {p0, v0, v1, p1}, Lcom/intermedia/model/AutoParcel_FriendRequest;-><init>(Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/FriendStatus;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_FriendRequest$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_FriendRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/FriendStatus;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/intermedia/model/FriendRequest;-><init>()V

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null requestedUser"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestedUser:Lcom/intermedia/model/PartialUser;

    if-nez p2, :cond_1

    .line 21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null requestingUser"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    iput-object p2, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestingUser:Lcom/intermedia/model/PartialUser;

    if-nez p3, :cond_2

    .line 25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    iput-object p3, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->status:Lcom/intermedia/model/FriendStatus;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/FriendStatus;Lcom/intermedia/model/AutoParcel_FriendRequest$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/intermedia/model/AutoParcel_FriendRequest;-><init>(Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/FriendStatus;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/FriendRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    check-cast p1, Lcom/intermedia/model/FriendRequest;

    .line 61
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestedUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {p1}, Lcom/intermedia/model/FriendRequest;->requestedUser()Lcom/intermedia/model/PartialUser;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestingUser:Lcom/intermedia/model/PartialUser;

    .line 62
    invoke-virtual {p1}, Lcom/intermedia/model/FriendRequest;->requestingUser()Lcom/intermedia/model/PartialUser;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->status:Lcom/intermedia/model/FriendStatus;

    .line 63
    invoke-virtual {p1}, Lcom/intermedia/model/FriendRequest;->status()Lcom/intermedia/model/FriendStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/intermedia/model/FriendStatus;->equals(Ljava/lang/Object;)Z

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
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestedUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 74
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestingUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->status:Lcom/intermedia/model/FriendStatus;

    invoke-virtual {v1}, Lcom/intermedia/model/FriendStatus;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public requestedUser()Lcom/intermedia/model/PartialUser;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestedUser:Lcom/intermedia/model/PartialUser;

    return-object v0
.end method

.method public requestingUser()Lcom/intermedia/model/PartialUser;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestingUser:Lcom/intermedia/model/PartialUser;

    return-object v0
.end method

.method public status()Lcom/intermedia/model/FriendStatus;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->status:Lcom/intermedia/model/FriendStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FriendRequest{requestedUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestedUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestingUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->status:Lcom/intermedia/model/FriendStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestedUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 100
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->requestingUser:Lcom/intermedia/model/PartialUser;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 101
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_FriendRequest;->status:Lcom/intermedia/model/FriendStatus;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
