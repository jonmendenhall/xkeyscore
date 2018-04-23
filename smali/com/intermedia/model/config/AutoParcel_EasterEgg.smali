.class final Lcom/intermedia/model/config/AutoParcel_EasterEgg;
.super Lcom/intermedia/model/config/EasterEgg;
.source "AutoParcel_EasterEgg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/config/AutoParcel_EasterEgg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enabled:Z

.field private final interval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$1;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_EasterEgg$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 70
    const-class v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 73
    sget-object v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/intermedia/model/config/AutoParcel_EasterEgg;-><init>(ZJ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_EasterEgg$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_EasterEgg;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZJ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/intermedia/model/config/EasterEgg;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->enabled:Z

    .line 15
    iput-wide p2, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    return-void
.end method

.method synthetic constructor <init>(ZJLcom/intermedia/model/config/AutoParcel_EasterEgg$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/intermedia/model/config/AutoParcel_EasterEgg;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enabled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->enabled:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/config/EasterEgg;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 42
    check-cast p1, Lcom/intermedia/model/config/EasterEgg;

    .line 43
    iget-boolean v1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->enabled:Z

    invoke-virtual {p1}, Lcom/intermedia/model/config/EasterEgg;->enabled()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    .line 44
    invoke-virtual {p1}, Lcom/intermedia/model/config/EasterEgg;->interval()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 53
    iget-boolean v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->enabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 55
    iget-wide v2, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    iget-wide v4, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public interval()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    return-wide v0
.end method

.method public toBuilder()Lcom/intermedia/model/config/EasterEgg$Builder;
    .locals 1

    .line 89
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;-><init>(Lcom/intermedia/model/config/EasterEgg;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EasterEgg{enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 78
    iget-boolean p2, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->enabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    iget-wide v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;->interval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
