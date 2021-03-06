.class final Lcom/intermedia/model/AutoParcel_AddressBookContact;
.super Lcom/intermedia/model/AddressBookContact;
.source "AutoParcel_AddressBookContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_AddressBookContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contactMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final user:Lcom/intermedia/model/PartialUser;

.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/intermedia/model/AutoParcel_AddressBookContact$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_AddressBookContact$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 92
    const-class v0, Lcom/intermedia/model/AutoParcel_AddressBookContact;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 95
    sget-object v0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/intermedia/model/AutoParcel_AddressBookContact;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/intermedia/model/AutoParcel_AddressBookContact;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/PartialUser;

    invoke-direct {p0, v0, v1, p1}, Lcom/intermedia/model/AutoParcel_AddressBookContact;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/intermedia/model/PartialUser;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_AddressBookContact$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_AddressBookContact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/intermedia/model/PartialUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/intermedia/model/PartialUser;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/intermedia/model/AddressBookContact;-><init>()V

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null contactMethods"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->contactMethods:Ljava/util/List;

    if-nez p2, :cond_1

    .line 22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null uuid"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    iput-object p2, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->uuid:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 26
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null user"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    iput-object p3, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->user:Lcom/intermedia/model/PartialUser;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/AutoParcel_AddressBookContact$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/intermedia/model/AutoParcel_AddressBookContact;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/intermedia/model/PartialUser;)V

    return-void
.end method


# virtual methods
.method public contactMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/intermedia/model/AddressBookContact$ContactMethod;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->contactMethods:Ljava/util/List;

    return-object v0
.end method

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

    .line 60
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/AddressBookContact;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 61
    check-cast p1, Lcom/intermedia/model/AddressBookContact;

    .line 62
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->contactMethods:Ljava/util/List;

    invoke-virtual {p1}, Lcom/intermedia/model/AddressBookContact;->contactMethods()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->uuid:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/intermedia/model/AddressBookContact;->uuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->user:Lcom/intermedia/model/PartialUser;

    .line 64
    invoke-virtual {p1}, Lcom/intermedia/model/AddressBookContact;->user()Lcom/intermedia/model/PartialUser;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 73
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->contactMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 75
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lcom/intermedia/model/AddressBookContact$Builder;
    .locals 1

    .line 112
    new-instance v0, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_AddressBookContact$Builder;-><init>(Lcom/intermedia/model/AddressBookContact;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressBookContact{contactMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->contactMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public user()Lcom/intermedia/model/PartialUser;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->user:Lcom/intermedia/model/PartialUser;

    return-object v0
.end method

.method public uuid()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 100
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->contactMethods:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 101
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 102
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_AddressBookContact;->user:Lcom/intermedia/model/PartialUser;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
