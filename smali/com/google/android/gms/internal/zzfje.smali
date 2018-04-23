.class abstract enum Lcom/google/android/gms/internal/zzfje;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzfje;",
        ">;"
    }
.end annotation


# static fields
.field private static enum zzpmv:Lcom/google/android/gms/internal/zzfje;

.field public static final enum zzpmw:Lcom/google/android/gms/internal/zzfje;

.field private static enum zzpmx:Lcom/google/android/gms/internal/zzfje;

.field private static final synthetic zzpmy:[Lcom/google/android/gms/internal/zzfje;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzfjf;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfjf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzfje;->zzpmv:Lcom/google/android/gms/internal/zzfje;

    new-instance v0, Lcom/google/android/gms/internal/zzfjg;

    const-string v1, "STRICT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzfjg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzfje;->zzpmw:Lcom/google/android/gms/internal/zzfje;

    new-instance v0, Lcom/google/android/gms/internal/zzfjh;

    const-string v1, "LAZY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzfjh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzfje;->zzpmx:Lcom/google/android/gms/internal/zzfje;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/zzfje;

    sget-object v1, Lcom/google/android/gms/internal/zzfje;->zzpmv:Lcom/google/android/gms/internal/zzfje;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzfje;->zzpmw:Lcom/google/android/gms/internal/zzfje;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzfje;->zzpmx:Lcom/google/android/gms/internal/zzfje;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/zzfje;->zzpmy:[Lcom/google/android/gms/internal/zzfje;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/zzfix;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfje;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzfje;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfje;->zzpmy:[Lcom/google/android/gms/internal/zzfje;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzfje;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzfje;

    return-object v0
.end method


# virtual methods
.method abstract zza(Lcom/google/android/gms/internal/zzffb;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
