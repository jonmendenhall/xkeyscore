.class final Lcom/intermedia/model/AutoParcel_PlayerContact;
.super Lcom/intermedia/model/PlayerContact;
.source "AutoParcel_PlayerContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_PlayerContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final status:Lcom/intermedia/model/PlayerContact$Status;

.field private final user:Lcom/intermedia/model/PartialUser;

.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/intermedia/model/AutoParcel_PlayerContact$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_PlayerContact$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_PlayerContact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    const-class v0, Lcom/intermedia/model/AutoParcel_PlayerContact;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_PlayerContact;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/intermedia/model/AutoParcel_PlayerContact;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intermedia/model/PlayerContact$Status;

    sget-object v1, Lcom/intermedia/model/AutoParcel_PlayerContact;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intermedia/model/PartialUser;

    sget-object v2, Lcom/intermedia/model/AutoParcel_PlayerContact;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/intermedia/model/AutoParcel_PlayerContact;-><init>(Lcom/intermedia/model/PlayerContact$Status;Lcom/intermedia/model/PartialUser;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_PlayerContact$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_PlayerContact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/intermedia/model/PlayerContact$Status;Lcom/intermedia/model/PartialUser;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/intermedia/model/PlayerContact;-><init>()V

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->status:Lcom/intermedia/model/PlayerContact$Status;

    .line 20
    iput-object p2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    if-nez p3, :cond_1

    .line 22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null uuid"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    iput-object p3, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->uuid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/model/PlayerContact$Status;Lcom/intermedia/model/PartialUser;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_PlayerContact$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/intermedia/model/AutoParcel_PlayerContact;-><init>(Lcom/intermedia/model/PlayerContact$Status;Lcom/intermedia/model/PartialUser;Ljava/lang/String;)V

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

    .line 57
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/PlayerContact;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 58
    check-cast p1, Lcom/intermedia/model/PlayerContact;

    .line 59
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->status:Lcom/intermedia/model/PlayerContact$Status;

    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->status()Lcom/intermedia/model/PlayerContact$Status;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/intermedia/model/PlayerContact$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->user()Lcom/intermedia/model/PartialUser;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->user()Lcom/intermedia/model/PartialUser;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->uuid:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->uuid()Ljava/lang/String;

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
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->status:Lcom/intermedia/model/PlayerContact$Status;

    invoke-virtual {v0}, Lcom/intermedia/model/PlayerContact$Status;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 72
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public status()Lcom/intermedia/model/PlayerContact$Status;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->status:Lcom/intermedia/model/PlayerContact$Status;

    return-object v0
.end method

.method public toBuilder()Lcom/intermedia/model/PlayerContact$Builder;
    .locals 1

    .line 109
    new-instance v0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;-><init>(Lcom/intermedia/model/PlayerContact;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerContact{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->status:Lcom/intermedia/model/PlayerContact$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public user()Lcom/intermedia/model/PartialUser;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    return-object v0
.end method

.method public uuid()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 97
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->status:Lcom/intermedia/model/PlayerContact$Status;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 98
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 99
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
