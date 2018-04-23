.class final Lcom/intermedia/model/AutoParcel_VerificationId;
.super Lcom/intermedia/model/VerificationId;
.source "AutoParcel_VerificationId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_VerificationId$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_VerificationId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callsEnabled:Z

.field private final expires:Ljava/util/Date;

.field private final phone:Ljava/lang/String;

.field private final retrySeconds:J

.field private final verificationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/intermedia/model/AutoParcel_VerificationId$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_VerificationId$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 116
    const-class v0, Lcom/intermedia/model/AutoParcel_VerificationId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 119
    sget-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Date;

    sget-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_VerificationId;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/intermedia/model/AutoParcel_VerificationId;-><init>(ZJLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_VerificationId$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_VerificationId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZJLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/intermedia/model/VerificationId;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->callsEnabled:Z

    .line 22
    iput-wide p2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    if-nez p4, :cond_0

    .line 24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null expires"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_0
    iput-object p4, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->expires:Ljava/util/Date;

    if-nez p5, :cond_1

    .line 28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null phone"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    iput-object p5, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->phone:Ljava/lang/String;

    if-nez p6, :cond_2

    .line 32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null verificationId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_2
    iput-object p6, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->verificationId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZJLjava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_VerificationId$1;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lcom/intermedia/model/AutoParcel_VerificationId;-><init>(ZJLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callsEnabled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->callsEnabled:Z

    return v0
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

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/VerificationId;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 79
    check-cast p1, Lcom/intermedia/model/VerificationId;

    .line 80
    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->callsEnabled:Z

    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->callsEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    .line 81
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->retrySeconds()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->expires:Ljava/util/Date;

    .line 82
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->expires()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->phone:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->phone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->verificationId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->verificationId()Ljava/lang/String;

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

.method public expires()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 93
    iget-boolean v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->callsEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 95
    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    iget-wide v6, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    mul-int/2addr v0, v1

    .line 97
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->expires:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 99
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 101
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->verificationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public phone()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public retrySeconds()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    return-wide v0
.end method

.method public toBuilder()Lcom/intermedia/model/VerificationId$Builder;
    .locals 1

    .line 138
    new-instance v0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;-><init>(Lcom/intermedia/model/VerificationId;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerificationId{callsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->callsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retrySeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->expires:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->verificationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verificationId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->verificationId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 124
    iget-boolean p2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->callsEnabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 125
    iget-wide v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->retrySeconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 126
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->expires:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 127
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 128
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_VerificationId;->verificationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
