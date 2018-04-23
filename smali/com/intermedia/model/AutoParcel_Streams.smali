.class final Lcom/intermedia/model/AutoParcel_Streams;
.super Lcom/intermedia/model/Streams;
.source "AutoParcel_Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/AutoParcel_Streams$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/AutoParcel_Streams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final high:Ljava/lang/String;

.field private final low:Ljava/lang/String;

.field private final medium:Ljava/lang/String;

.field private final passthrough:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/intermedia/model/AutoParcel_Streams$1;

    invoke-direct {v0}, Lcom/intermedia/model/AutoParcel_Streams$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    const-class v0, Lcom/intermedia/model/AutoParcel_Streams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 114
    sget-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    sget-object v0, Lcom/intermedia/model/AutoParcel_Streams;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/intermedia/model/AutoParcel_Streams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/AutoParcel_Streams$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/AutoParcel_Streams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/intermedia/model/Streams;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_Streams$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/intermedia/model/AutoParcel_Streams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Streams;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 74
    check-cast p1, Lcom/intermedia/model/Streams;

    .line 75
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->source()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->source()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->passthrough()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->passthrough()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->high()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->high()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->medium()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->medium()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->low()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->low()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 90
    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 92
    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 94
    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 96
    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public high()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    return-object v0
.end method

.method public low()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    return-object v0
.end method

.method public medium()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    return-object v0
.end method

.method public passthrough()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    return-object v0
.end method

.method public source()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Streams{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", passthrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", high="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 119
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Streams;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 120
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Streams;->passthrough:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 121
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Streams;->high:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 122
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Streams;->medium:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 123
    iget-object p2, p0, Lcom/intermedia/model/AutoParcel_Streams;->low:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
