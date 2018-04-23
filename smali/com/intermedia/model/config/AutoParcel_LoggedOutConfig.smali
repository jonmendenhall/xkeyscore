.class final Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;
.super Lcom/intermedia/model/config/LoggedOutConfig;
.source "AutoParcel_LoggedOutConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final verification:Lcom/intermedia/model/config/VerificationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$1;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    const-class v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/config/VerificationProvider;

    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;-><init>(Lcom/intermedia/model/config/VerificationProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/intermedia/model/config/VerificationProvider;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/intermedia/model/config/LoggedOutConfig;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/model/config/VerificationProvider;Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;-><init>(Lcom/intermedia/model/config/VerificationProvider;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/config/LoggedOutConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 34
    check-cast p1, Lcom/intermedia/model/config/LoggedOutConfig;

    .line 35
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/intermedia/model/config/LoggedOutConfig;->verification()Lcom/intermedia/model/config/VerificationProvider;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    invoke-virtual {p1}, Lcom/intermedia/model/config/LoggedOutConfig;->verification()Lcom/intermedia/model/config/VerificationProvider;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Lcom/intermedia/model/config/LoggedOutConfig$Builder;
    .locals 1

    .line 77
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig$Builder;-><init>(Lcom/intermedia/model/config/LoggedOutConfig;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggedOutConfig{verification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verification()Lcom/intermedia/model/config/VerificationProvider;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_LoggedOutConfig;->verification:Lcom/intermedia/model/config/VerificationProvider;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
