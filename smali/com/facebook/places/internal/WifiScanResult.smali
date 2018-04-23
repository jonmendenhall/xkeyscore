.class public Lcom/facebook/places/internal/WifiScanResult;
.super Ljava/lang/Object;
.source "WifiScanResult.java"


# instance fields
.field public bssid:Ljava/lang/String;

.field public frequency:I

.field public rssi:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    .line 68
    iput p3, p0, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    .line 69
    iput p4, p0, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    return-void
.end method
