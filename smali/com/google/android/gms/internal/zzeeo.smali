.class final Lcom/google/android/gms/internal/zzeeo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzeeo;",
        ">;"
    }
.end annotation


# instance fields
.field private retryCount:I

.field private zzmks:Lcom/google/android/gms/internal/zzedk;

.field private zzmuh:Lcom/google/firebase/database/Transaction$Handler;

.field private zzmui:Lcom/google/firebase/database/ValueEventListener;

.field private zzmuj:I

.field private zzmuk:J

.field private zzmul:Z

.field private zzmum:Lcom/google/firebase/database/DatabaseError;

.field private zzmun:J

.field private zzmuo:Lcom/google/android/gms/internal/zzekd;

.field private zzmup:Lcom/google/android/gms/internal/zzekd;

.field private zzmuq:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuh:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeeo;->zzmui:Lcom/google/firebase/database/ValueEventListener;

    iput p4, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuj:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzeeo;->zzmul:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmum:Lcom/google/firebase/database/DatabaseError;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuo:Lcom/google/android/gms/internal/zzekd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmup:Lcom/google/android/gms/internal/zzekd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuq:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/zzedo;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/zzeeo;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuj:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmun:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuo:Lcom/google/android/gms/internal/zzekd;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuo:Lcom/google/android/gms/internal/zzekd;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmum:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeeo;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmun:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzeeo;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmup:Lcom/google/android/gms/internal/zzekd;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeeo;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuj:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzeeo;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuq:Lcom/google/android/gms/internal/zzekd;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzeeo;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmup:Lcom/google/android/gms/internal/zzekd;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuq:Lcom/google/android/gms/internal/zzekd;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/Transaction$Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuh:Lcom/google/firebase/database/Transaction$Handler;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/ValueEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmui:Lcom/google/firebase/database/ValueEventListener;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmum:Lcom/google/firebase/database/DatabaseError;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzeeo;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzeeo;->retryCount:I

    return p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzeeo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmul:Z

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/zzeeo;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzeeo;->zzmuk:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
